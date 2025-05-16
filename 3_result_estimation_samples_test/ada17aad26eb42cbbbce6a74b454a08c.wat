(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result i32)
    (local $temp i32)
    (f64.const 9.087339863133772e+125)
    (f64.const 8.609794754907019e-167)
    f64.ceil
    f64.gt
    i32.clz
    return
)

)