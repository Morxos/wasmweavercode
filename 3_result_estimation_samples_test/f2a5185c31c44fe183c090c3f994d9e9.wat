(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result i64)
    (local f64 i32)
    (local $temp i32)
    local.get 0
    f32.demote_f64
    i32.reinterpret_f32
    local.set 1
    (i64.const 708470325)
)

)