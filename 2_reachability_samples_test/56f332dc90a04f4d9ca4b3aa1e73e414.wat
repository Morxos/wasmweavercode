(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1723292472 (mut i64) (i64.const -4939447939127038112))
(func $run (export "run")
    (local i64)
    (local $temp i32)
    ;;FLAG_0
    (f64.const 4.303927663895343e-24)
    (i64.const -877822320)
    global.set $global_1723292472
    f64.ceil
    nop
    f32.demote_f64
    i32.trunc_f32_s
    (br_table 0)
    ;;FLAG_1
    (i32.const -1102708)
    f32.reinterpret_i32
    drop
    global.get $global_1723292472
    i64.extend32_s
    local.tee 0
    global.set $global_1723292472
    return
)

)