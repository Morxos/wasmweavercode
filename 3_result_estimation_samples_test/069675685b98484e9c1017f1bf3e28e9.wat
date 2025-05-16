(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result i64)
    (local f64)
    (local $temp i32)
    (i64.const 881)
    i64.ctz
    f64.convert_i64_s
    local.get 0
    i64.reinterpret_f64
    f64.convert_i64_u
    f64.copysign
    drop
    (i64.const 8699)
    return
)

)