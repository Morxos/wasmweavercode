(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result i64)
    (local i32)
    (local $temp i32)
    (i32.const -3209)
    local.tee 0
    i64.extend_i32_u
    i64.extend16_s
    f64.convert_i64_s
    f64.floor
    f64.abs
    f64.nearest
    i64.reinterpret_f64
)

)