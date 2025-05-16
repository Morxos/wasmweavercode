(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result f32)
    (local $temp i32)
    (f32.const -0.11246611177921295)
    drop
    (f64.const 4.387572190244116e-154)
    drop
    (i64.const -643425)
    i64.ctz
    f64.reinterpret_i64
    f64.sqrt
    i64.trunc_f64_s
    i64.popcnt
    f64.convert_i64_s
    (f64.const 3.4691715700964717e+47)
    f64.gt
    f32.convert_i32_s
    return
)

)