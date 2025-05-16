(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_3097920749 (mut f32) (f32.const 1.0163741863454966e+18))
(func $run (export "run") (result f64)
    (local i64)
    (local $temp i32)
    (f64.const 2.8334509198050948e-64)
    f64.floor
    drop
    (i64.const -892273)
    local.set 0
    global.get $global_3097920749
    i64.trunc_f32_s
    i64.ctz
    f64.convert_i64_u
)

)