(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result i32)
    (local $temp i32)
    (f64.const 9.210771461598308e+89)
    drop
    (i64.const 1021)
    f64.convert_i64_s
    i32.trunc_f64_u
)

)