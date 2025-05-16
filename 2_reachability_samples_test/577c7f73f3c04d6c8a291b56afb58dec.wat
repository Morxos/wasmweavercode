(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3294973973 (mut i32) (i32.const -1565986131))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    ;;FLAG_0
    (i32.const -1581857371)
    i64.extend_i32_s
    (i32.const 131373657)
    nop
    f64.convert_i32_u
    i64.reinterpret_f64
    i64.le_u
    (br_table 0)
    ;;FLAG_1
    nop
    global.get $global_3294973973
    f32.convert_i32_u
    global.get $global_3294973973
    global.get $global_3294973973
    local.tee 0
    i32.le_s
    f32.convert_i32_s
    f32.gt
    f64.convert_i32_s
    i64.trunc_f64_u
    i64.clz
    drop
    (i32.const -390209)
    (br_table 0)
    ;;FLAG_2
)

)