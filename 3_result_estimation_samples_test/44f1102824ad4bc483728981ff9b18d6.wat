(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result i32)
    (local i64)
    (local $temp i32)
    (i32.const -1683556989)
    i64.extend_i32_u
    f64.reinterpret_i64
    i64.trunc_f64_u
    local.tee 0
    f64.reinterpret_i64
    i32.trunc_f64_u
)

)