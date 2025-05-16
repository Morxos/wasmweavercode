(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result f32)
    (local $temp i32)
    (f64.const 3.948019980125824e+278)
    (f64.const 5.782259222708367e-202)
    f64.ne
    f64.convert_i32_s
    i32.trunc_f64_s
    i32.popcnt
    f32.reinterpret_i32
)

)