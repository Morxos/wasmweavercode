import math, torch, torch.nn as nn

def get_sinusoidal_positional_encoding(max_len, d_model):
    position  = torch.arange(max_len).unsqueeze(1)
    div_term  = torch.exp(torch.arange(0, d_model, 2) *
                          (-math.log(10000.0) / d_model))
    pe        = torch.zeros(max_len, d_model)
    pe[:, 0::2] = torch.sin(position * div_term)
    pe[:, 1::2] = torch.cos(position * div_term)
    return pe                       # (max_len, d_model)

class SequenceEncoder(nn.Module):
    def __init__(self, vocab_size, d_model=32,
                 n_layers=2, n_heads=4, max_len=128):
        super().__init__()
        self.d_model = d_model

        self.token   = nn.Embedding(vocab_size, d_model, padding_idx=0)
        self.val_proj = nn.Linear(1, d_model)

        self.register_buffer("pos",
            get_sinusoidal_positional_encoding(max_len, d_model))

        enc_layer = nn.TransformerEncoderLayer(
            d_model, n_heads, batch_first=True)
        self.enc  = nn.TransformerEncoder(enc_layer, n_layers, enable_nested_tensor=False)

        self.pool  = nn.Linear(d_model, d_model)
        self.register_buffer("empty", torch.zeros(d_model))

    def forward(self, ids, mask, values):
        # token + value + position
        tok_emb = self.token(ids) * math.sqrt(self.d_model)  # (B,L,D)
        val_emb = self.val_proj(values.unsqueeze(-1))  # (B,L,D)
        pos_emb = self.pos[:ids.size(1)]  # (L,D)
        emb = tok_emb + val_emb + pos_emb  # (B,L,D)

        # Transformer encoder  (output shape (B,L,D))
        z = self.enc(emb, src_key_padding_mask=(mask == 0))

        # masked mean‑pool
        mask_f = mask.to(z.dtype)  # (B,L)
        z_sum = (z * mask_f.unsqueeze(-1)).sum(1)  # (B,D)
        n = mask_f.sum(1, keepdim=True).clamp_min(1)  # (B,1)
        pooled = z_sum / n  # (B,D)

        rows_zero = (mask.sum(1) == 0)  # (B,)
        if rows_zero.any():  # guard prevents shape‑mismatch
            pooled[rows_zero] = self.empty  # safe broadcast

        return self.pool(pooled)  # (B,D)                          # (B,D)
