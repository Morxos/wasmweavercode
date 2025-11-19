# SPDX-License-Identifier: MIT
# SPDX-FileCopyrightText: 2025 Siemens AG

import math, torch, torch.nn as nn

def get_sinusoidal_positional_encoding(max_len, d_model):
    """
    Returns sinusoidal positional encodings.
    """
    position  = torch.arange(max_len).unsqueeze(1)
    div_term  = torch.exp(torch.arange(0, d_model, 2) *
                          (-math.log(10000.0) / d_model))
    pe        = torch.zeros(max_len, d_model)
    pe[:, 0::2] = torch.sin(position * div_term)
    pe[:, 1::2] = torch.cos(position * div_term)
    return pe                       # (max_len, d_model)

class SequenceEncoder(nn.Module):
    """
    Encodes a sequence of token ids and associated values using a Transformer encoder.
    """
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
        tok_emb = self.token(ids) * math.sqrt(self.d_model)
        val_emb = self.val_proj(values.unsqueeze(-1))
        pos_emb = self.pos[:ids.size(1)]
        emb = tok_emb + val_emb + pos_emb

        z = self.enc(emb, src_key_padding_mask=(mask == 0))

        mask_f = mask.to(z.dtype)
        z_sum = (z * mask_f.unsqueeze(-1)).sum(1)
        n = mask_f.sum(1, keepdim=True).clamp_min(1)
        pooled = z_sum / n

        rows_zero = (mask.sum(1) == 0)
        if rows_zero.any():
            pooled[rows_zero] = self.empty

        return self.pool(pooled)
