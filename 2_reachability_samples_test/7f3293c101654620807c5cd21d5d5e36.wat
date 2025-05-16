(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3906959887 (mut i64) (i64.const 4392238663383835272))
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_0
    (i32.const -808999421)
    (i32.const 1932292955)
    i32.shr_u
    f64.convert_i32_u
    i64.trunc_f64_s
    f64.convert_i64_u
    f64.floor
    f64.trunc
    i64.trunc_f64_s
    global.set $global_3906959887
    return
)

)