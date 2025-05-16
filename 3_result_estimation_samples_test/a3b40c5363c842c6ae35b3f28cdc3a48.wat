(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result i64)
    (local f32)
    (local $temp i32)
    (i64.const -7744269)
    drop
    (i32.const -54747702)
    f32.convert_i32_s
    local.set 0
    (i64.const 500)
)

)