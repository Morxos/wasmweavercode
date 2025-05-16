(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result i64)
    (local $temp i32)
    (f32.const -1.4411998107631697e-34)
    i64.trunc_f32_s
    f32.convert_i64_s
    i64.trunc_f32_u
    f64.reinterpret_i64
    i64.trunc_f64_s
)

)