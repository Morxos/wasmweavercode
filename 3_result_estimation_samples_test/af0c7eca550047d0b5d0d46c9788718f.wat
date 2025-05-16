(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result i32)
    (local $temp i32)
    nop
    (i64.const 98563254)
    drop
    (i32.const 315795292)
    f64.convert_i32_u
    i32.trunc_f64_s
)

)