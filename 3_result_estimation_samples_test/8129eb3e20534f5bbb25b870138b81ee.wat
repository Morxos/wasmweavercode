(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result i32)
    (local $temp i32)
    nop
    (f64.const 1.7388984248936215e-173)
    i32.trunc_f64_u
    i64.extend_i32_u
    i32.wrap_i64
)

)