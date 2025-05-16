param(
    [int]   $Count  = 10000,
    [int]   $Bytes  = 1024,
    [string]$OutDir = "smith_samples",
    [string]$WasmTools = "$Env:USERPROFILE\.cargo\bin\wasm-tools.exe"   # adjust if needed
)

if (-not (Test-Path $WasmTools)) {
    Throw "wasm-tools not found at '$WasmTools'.  Install with `cargo install wasm-tools` or give full path."
}

$rng  = [System.Security.Cryptography.RandomNumberGenerator]::Create()
New-Item -ItemType Directory -Path $OutDir -Force | Out-Null

for ($i = 0; $i -lt $Count; $i++) {

    $idx = "{0:D5}" -f $i
    $wasmPath = Join-Path $OutDir "module_${idx}.wasm"
    $watPath  = Join-Path $OutDir "module_${idx}.wat"

    # --- launch wasm-tools with redirected stdio ---------------------------
    $psi = New-Object System.Diagnostics.ProcessStartInfo
    $psi.FileName               = $WasmTools
    $psi.Arguments              = "smith --min-funcs 1 --simd-enabled false -o `"$wasmPath`" -t"
    $psi.UseShellExecute        = $false
    $psi.RedirectStandardInput  = $true   # we’ll write seed bytes here
    $psi.RedirectStandardOutput = $true   # WAT text will come out here
    $psi.CreateNoWindow         = $true

    $proc = New-Object System.Diagnostics.Process
    $proc.StartInfo = $psi
    $proc.Start()   | Out-Null

    # --- feed 4096 random bytes into stdin ---------------------------------
    $seed = [byte[]]::new($Bytes)
    $rng.GetBytes($seed)
    $proc.StandardInput.BaseStream.Write($seed, 0, $seed.Length)
    $proc.StandardInput.Close()

    $proc.WaitForExit()
    if ($proc.ExitCode -ne 0) {
        Write-Warning "wasm-tools exited with code $($proc.ExitCode) for sample $idx"
    }
}
