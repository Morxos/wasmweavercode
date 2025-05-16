(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result i64)
    (local $temp i32)
    nop
    (f64.const 2.9927583568152017e+127)
    f32.demote_f64
    f32.nearest
    drop
    (i64.const 43)
)

)