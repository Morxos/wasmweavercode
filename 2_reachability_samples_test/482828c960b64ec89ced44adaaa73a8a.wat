(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_139369354 (mut f64) (f64.const -2.1240681569929236e+18))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    ;;FLAG_0
    (f64.const 9.518651790384827e-121)
    global.set $global_139369354
    nop
    local.get 0
    f64.convert_i32_s
    f64.abs
    i64.trunc_f64_u
    drop
    br 0
)

)