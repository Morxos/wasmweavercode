(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result f64)
    (local $temp i32)
    (f64.const 3.4171245434464908e+97)
    f64.floor
    (i32.const 4)
    i32.clz
    drop
)

)