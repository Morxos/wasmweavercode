(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_946637257 (mut i64) (i64.const 5602238590250605829))
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_0
    (i64.const -915271410)
    i64.popcnt
    global.set $global_946637257
    (f32.const -3.464578618247392e+35)
    i32.reinterpret_f32
    i32.clz
    (br_table 0)
    ;;FLAG_1
    br 0
)

)