(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result i32)
    (local f32)
    (local $temp i32)
    (f64.const 1.2463111813944343e-248)
    f32.demote_f64
    local.set 0
    (i32.const -7102677)
    i32.ctz
)

)