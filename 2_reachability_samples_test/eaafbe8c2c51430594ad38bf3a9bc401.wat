(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1687172083 (mut f32) (f32.const -3.045376729079087e+18))
(global $global_2488810506 (mut f64) (f64.const 2.8859763902114304e+18))
(func $run (export "run")
    (local i64)
    (local $temp i32)
    ;;FLAG_0
    global.get $global_1687172083
    (f32.const -2.1651338191091707e+29)
    f32.eq
    i64.extend_i32_s
    drop
    local.get 0
    f32.convert_i64_s
    (i32.const 38266)
    global.get $global_1687172083
    drop
    (i64.const 14)
    i64.extend8_s
    i64.clz
    drop
    f64.convert_i32_u
    global.set $global_2488810506
    i32.reinterpret_f32
    (br_table 0)
    ;;FLAG_1
    global.get $global_1687172083
    i32.reinterpret_f32
    i32.popcnt
    (br_table 0)
    ;;FLAG_2
)

)