(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(table $tab_121288687 10 funcref)
(global $global_33568255 (mut i64) (i64.const -1456015500365035538))
(func $run (export "run")
    (local i64)
    (local $temp i32)
    ;;FLAG_0
    nop
    local.get 0
    i64.extend8_s
    drop
    (i64.const 655740)
    global.set $global_33568255
    (i32.const 739)
    (br_table 0)
    ;;FLAG_1
    local.get 0
    i32.wrap_i64
    (f64.const 1.1532605258807863e-164)
    i64.reinterpret_f64
    (f32.const -3.9605447863298193e+34)
    drop
    i64.extend8_s
    drop
    (br_table 0)
    ;;FLAG_2
    (i32.const 9)
    table.get $tab_121288687
    drop
)

)