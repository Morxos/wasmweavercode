(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2183327446 (mut f32) (f32.const 1.7413415074466365e+18))
(global $global_3090112992 (mut i32) (i32.const 813264903))
(func $run (export "run")
    (local i64)
    (local $temp i32)
    ;;FLAG_0
    block
        ;;FLAG_3
        (f32.const 4.0357184102831615e+22)
        (f64.const 7.904322014769271e+294)
        i64.reinterpret_f64
        local.set 0
        global.set $global_2183327446
    end

    ;;FLAG_1
    (f64.const 4.11288141504704e-154)
    f64.abs
    i32.trunc_f64_s
    i32.popcnt
    global.set $global_3090112992
    (i32.const -6)
    (br_table 0)
    ;;FLAG_2
    return
)

)