(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2081945484 (mut i64) (i64.const -4421292265341473452))
(func $run (export "run")
    (local f32 i32 i64 i64 i32)
    (local $temp i32)
    ;;FLAG_0
    global.get $global_2081945484
    i64.extend8_s
    f64.reinterpret_i64
    f32.demote_f64
    f32.floor
    global.get $global_2081945484
    f64.reinterpret_i64
    f64.floor
    nop
    f64.trunc
    nop
    (f32.const -5.306625098455697e-06)
    local.set 0
    f64.trunc
    f64.neg
    f64.sqrt
    f64.abs
    i64.reinterpret_f64
    (i32.const 8902725)
    (i32.const 0)
    local.tee 1
    i64.extend_i32_s
    local.tee 2
    local.tee 3
    f32.convert_i64_u
    local.set 0
    local.tee 4
    f32.convert_i32_s
    local.set 0
    f32.convert_i64_s
    f32.max
    f64.promote_f32
    i64.trunc_f64_u
    i64.popcnt
    i64.extend16_s
    i64.ctz
    global.get $global_2081945484
    i64.popcnt
    i64.gt_s
    i32.extend16_s
    (br_table 0)
    ;;FLAG_1
)

)