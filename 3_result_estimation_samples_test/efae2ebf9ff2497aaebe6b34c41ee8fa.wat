(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_4116913823 (mut f64) (f64.const 1.2231506271523185e+18))
(func $run (export "run") (result f32)
    (local $temp i32)
    (i64.const 427350)
    f32.convert_i64_u
    i32.trunc_f32_u
    i32.ctz
    i64.extend_i32_u
    f64.reinterpret_i64
    f64.abs
    f64.sqrt
    global.set $global_4116913823
    nop
    (f32.const -1.98810606159951e-18)
)

)