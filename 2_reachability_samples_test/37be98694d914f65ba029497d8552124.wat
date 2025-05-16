(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1143910599 i32 (i32.const -108085236))
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_0
    global.get $global_1143910599
    global.get $global_1143910599
    i32.lt_s
    i32.popcnt
    i32.ctz
    i32.popcnt
    (br_table 0)
    ;;FLAG_1
    (i32.const -1271253619)
    i32.popcnt
    f32.convert_i32_u
    drop
    br 0
)

)