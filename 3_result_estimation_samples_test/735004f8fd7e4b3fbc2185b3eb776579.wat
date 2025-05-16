(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result i64)
    (local f32)
    (local $temp i32)
    nop
    (f32.const -7.596506839558206e+23)
    local.set 0
    (i32.const -1864027)
    drop
    (f64.const 3.5212387612761584e+232)
    i64.reinterpret_f64
    i64.extend32_s
)

)