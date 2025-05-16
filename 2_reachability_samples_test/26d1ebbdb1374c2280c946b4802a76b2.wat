(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2884956447 (mut i32) (i32.const 1503584369))
(func $run (export "run")
    (local f64 i32 i64)
    (local $temp i32)
    ;;FLAG_0
    (f64.const 5.1422806805501123e+120)
    f64.ceil
    f64.nearest
    local.set 0
    global.get $global_2884956447
    local.set 1
    (i64.const -9773697)
    i64.extend16_s
    i64.extend8_s
    i64.extend16_s
    i64.extend8_s
    i64.ctz
    i64.extend8_s
    local.tee 2
    i64.extend16_s
    i64.popcnt
    i64.ctz
    (i64.const 2947321)
    i64.eq
    i32.ctz
    (br_table 0)
    ;;FLAG_1
)

)