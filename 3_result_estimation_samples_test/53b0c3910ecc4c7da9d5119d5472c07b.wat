(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result f64)
    (local $temp i32)
    (i64.const 581374)
    i64.eqz
    f64.convert_i32_u
    nop
    i32.trunc_f64_u
    i64.extend_i32_s
    f64.convert_i64_s
)

)