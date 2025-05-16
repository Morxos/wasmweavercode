(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result f32)
    (local $temp i32)
    (i64.const 4910030220619513542)
    i64.clz
    (i64.const 503520699)
    i64.le_u
    f32.reinterpret_i32
    f32.abs
    i64.trunc_f32_s
    f64.reinterpret_i64
    i64.reinterpret_f64
    (f32.const 0.004517556633800268)
    nop
    i64.trunc_f32_s
    i64.lt_u
    f32.reinterpret_i32
)

)