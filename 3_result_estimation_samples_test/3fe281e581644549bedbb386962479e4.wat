(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result f64)
    (local f64)
    (local $temp i32)
    nop
    (i32.const -5)
    local.get 0
    f64.abs
    i32.trunc_f64_s
    i32.shl
    local.get 0
    (f64.const 8.074573544927451e+76)
    f64.gt
    i32.shl
    f64.convert_i32_s
)

)