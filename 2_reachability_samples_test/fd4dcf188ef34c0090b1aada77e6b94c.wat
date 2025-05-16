(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_477789040 (mut i32) (i32.const -1313566428))
(global $global_3458296859 (mut f64) (f64.const 8.082309784342194e+18))
(func $run (export "run")
    (local f64 f32 f32 f32)
    (local $temp i32)
    ;;FLAG_0
    global.get $global_477789040
    nop
    f64.convert_i32_u
    i64.trunc_f64_u
    f64.convert_i64_u
    drop
    (i64.const -21)
    i64.extend8_s
    (i32.const -41)
    global.set $global_477789040
    (i32.const -45862)
    local.get 0
    i64.trunc_f64_u
    i64.ctz
    f32.convert_i64_u
    i32.reinterpret_f32
    global.get $global_477789040
    i32.xor
    drop
    i32.extend8_s
    i32.clz
    f32.reinterpret_i32
    f32.sqrt
    f32.nearest
    f64.promote_f32
    global.set $global_3458296859
    (i32.const -9458069)
    i32.extend8_s
    global.get $global_477789040
    i32.le_s
    i32.ctz
    i64.extend_i32_u
    i64.xor
    f32.convert_i64_u
    f32.sqrt
    local.tee 1
    local.tee 2
    local.tee 3
    i64.trunc_f32_u
    i64.eqz
    (br_table 0)
    ;;FLAG_1
)

)