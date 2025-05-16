(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2711088294 (mut i64) (i64.const 3967406128389175679))
(global $global_150383584 (mut i32) (i32.const -1050859286))
(func $run (export "run")
    (local i64)
    (local $temp i32)
    ;;FLAG_0
    global.get $global_2711088294
    local.set 0
    (f32.const -4.5202379941036976e-20)
    i64.trunc_f32_s
    f64.reinterpret_i64
    i32.trunc_f64_s
    global.set $global_150383584
    (i32.const 7)
    (br_table 0)
    ;;FLAG_1
    return
)

)