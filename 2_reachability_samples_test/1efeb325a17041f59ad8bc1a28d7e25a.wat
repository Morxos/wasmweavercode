(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1154725149 (mut f64) (f64.const -2.822639595461511e+18))
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_0
    (i64.const -965558)
    f64.convert_i64_s
    f64.abs
    global.set $global_1154725149
    global.get $global_1154725149
    i64.reinterpret_f64
    i64.extend8_s
    f64.convert_i64_u
    i64.trunc_f64_s
    (f32.const -8.994887378798451e+36)
    drop
    drop
    nop
    br 0
)

)