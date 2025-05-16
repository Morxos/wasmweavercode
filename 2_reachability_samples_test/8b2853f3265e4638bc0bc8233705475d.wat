(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2265581046 (mut f64) (f64.const -6.980031431249254e+18))
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_0
    global.get $global_2265581046
    (i32.const -1833)
    i32.ctz
    i32.ctz
    f64.convert_i32_s
    f64.copysign
    f64.ceil
    f32.demote_f64
    drop
    return
)

)