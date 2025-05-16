(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result i64)
    (local $temp i32)
    (i64.const 6)
    i64.popcnt
    i32.wrap_i64
    f64.convert_i32_u
    i64.trunc_f64_u
    i64.clz
)

)