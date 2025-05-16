(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_954181161 (mut i64) (i64.const 2450978224478920353))
(func $run (export "run") (result i32)
    (local $temp i32)
    (f32.const -3.0470137033852876e-25)
    f64.promote_f32
    i32.trunc_f64_s
    i64.extend_i32_s
    global.set $global_954181161
    (i32.const -27858593)
)

)