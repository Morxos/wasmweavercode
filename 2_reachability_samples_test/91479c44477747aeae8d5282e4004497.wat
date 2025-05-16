(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1993205456 (mut f32) (f32.const -4.924669699855221e+18))
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_0
    (f32.const -2.1265196346017315e-20)
    (f32.const 0.0)
    f32.le
    f64.convert_i32_u
    f64.trunc
    (f64.const 3.1680399940523424e-174)
    f64.eq
    i32.ctz
    f32.convert_i32_s
    f32.abs
    (i64.const -6638985896078580848)
    drop
    global.set $global_1993205456
    br 0
)

)