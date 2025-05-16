(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result i64)
    (local $temp i32)
    nop
    (f64.const 1.0632551640015681e-160)
    i64.trunc_f64_u
    f64.convert_i64_s
    i32.trunc_f64_u
    f32.convert_i32_s
    (f64.const 8.129101143725962e+266)
    f64.floor
    f64.trunc
    f64.sqrt
    f64.nearest
    drop
    nop
    i64.trunc_f32_s
)

)