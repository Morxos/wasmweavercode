(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result i64)
    (local $temp i32)
    (f64.const 1.1105444205433916e-37)
    i32.trunc_f64_u
    f64.convert_i32_s
    drop
    nop
    (i32.const -1052663580)
    f32.convert_i32_s
    drop
    (i32.const -7799)
    f32.convert_i32_u
    i64.trunc_f32_u
)

)