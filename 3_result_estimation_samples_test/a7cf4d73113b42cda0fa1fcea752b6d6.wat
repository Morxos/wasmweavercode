(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result f64)
    (local i32)
    (local $temp i32)
    (f64.const 2.6323743535056752e+82)
    drop
    nop
    nop
    (i32.const 496141204)
    local.set 0
    (f64.const 5.7755971825590704e-27)
    i64.trunc_f64_u
    f64.reinterpret_i64
    f64.neg
)

)