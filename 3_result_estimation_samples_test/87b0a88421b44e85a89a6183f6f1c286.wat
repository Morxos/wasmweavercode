(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result i64)
    (local $temp i32)
    (i32.const 60)
    i32.clz
    f64.convert_i32_u
    i32.trunc_f64_u
    drop
    (i64.const -2747887410942182850)
)

)