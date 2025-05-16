(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3382401973 i64 (i64.const 3154032910822143796))
(global $global_2766280449 (mut f32) (f32.const -5.983118416624484e+18))
(global $global_2621340925 (mut i64) (i64.const -2616760154685473682))
(func $run (export "run")
    (local i32 i32)
    (local $temp i32)
    ;;FLAG_0
    global.get $global_3382401973
    (f32.const 2.5530156888585347e+23)
    (i32.const -27030)
    local.tee 0
    nop
    i64.extend_i32_u
    f64.convert_i64_u
    i64.trunc_f64_s
    (i64.const -4342168553303702020)
    i64.rotr
    (i32.const -875949)
    nop
    local.set 0
    drop
    global.set $global_2766280449
    i64.ctz
    (f32.const -9.779590306199798e+30)
    f32.ceil
    global.get $global_3382401973
    i64.popcnt
    i64.extend8_s
    i64.popcnt
    global.get $global_3382401973
    i64.le_u
    i32.clz
    i32.extend8_s
    f32.convert_i32_s
    f32.div
    local.get 0
    f32.convert_i32_u
    f32.le
    i32.clz
    i32.clz
    local.tee 1
    (i64.const 526578)
    global.set $global_2621340925
    i64.extend_i32_s
    i64.rem_s
    f64.convert_i64_u
    f64.floor
    i32.trunc_f64_u
    global.get $global_3382401973
    nop
    f64.convert_i64_u
    i64.trunc_f64_u
    i64.popcnt
    f32.convert_i64_s
    i64.trunc_f32_u
    i64.clz
    global.get $global_3382401973
    i64.rotr
    i64.clz
    nop
    i64.extend8_s
    i64.eqz
    local.set 0
    (br_table 0)
    ;;FLAG_1
)

)