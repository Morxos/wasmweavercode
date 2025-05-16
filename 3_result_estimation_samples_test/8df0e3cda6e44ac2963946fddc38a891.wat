(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result i64)
    (local i32 f64 f32)
    (local $temp i32)
    nop
    (i64.const -7965168)
    i64.eqz
    local.set 0
    (f64.const 6.216623688374899e+40)
    f64.nearest
    local.set 1
    (f32.const -7.322294095502002e-07)
    local.set 2
    (f64.const 1.7444300470915365e-127)
    i32.trunc_f64_u
    i64.extend_i32_s
)

)