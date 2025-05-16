(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result i32)
    (local $temp i32)
    nop
    (i64.const 2)
    f64.reinterpret_i64
    i32.trunc_f64_s
    i32.ctz
)

)