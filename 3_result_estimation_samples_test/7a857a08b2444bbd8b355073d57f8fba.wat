(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result i32)
    (local i32)
    (local $temp i32)
    (i32.const -863041843)
    (f64.const 3.2093457658905627e+267)
    drop
    i32.extend16_s
    local.set 0
    (i32.const 99)
    f32.reinterpret_i32
    i32.reinterpret_f32
)

)