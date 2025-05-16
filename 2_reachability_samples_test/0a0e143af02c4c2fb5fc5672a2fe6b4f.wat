(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3659994497 (mut i64) (i64.const 3402397738934264104))
(func $run (export "run")
    (local f64)
    (local $temp i32)
    ;;FLAG_0
    global.get $global_3659994497
    global.set $global_3659994497
    (f64.const 0.0)
    local.set 0
    global.get $global_3659994497
    drop
    nop
    (i32.const -31600051)
    (br_table 0)
    ;;FLAG_1
    (i32.const -941429)
    f64.convert_i32_s
    f32.demote_f64
    i32.reinterpret_f32
    (br_table 0)
    ;;FLAG_2
    br 0
)

)