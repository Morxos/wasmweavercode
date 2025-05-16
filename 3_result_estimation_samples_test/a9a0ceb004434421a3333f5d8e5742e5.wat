(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result f64)
    (local $temp i32)
    (f64.const 2.344845781028896e-283)
    f64.nearest
    i32.trunc_f64_u
    f32.convert_i32_u
    f64.promote_f32
)

)