(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result i64)
    (local $temp i32)
    (i32.const -695)
    i64.extend_i32_u
    i64.extend32_s
    i64.extend16_s
    drop
    (i64.const -60)
)

)