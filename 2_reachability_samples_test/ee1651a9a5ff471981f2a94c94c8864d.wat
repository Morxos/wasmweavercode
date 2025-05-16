(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2302843215 (mut i32) (i32.const -288421749))
(global $global_362158315 (mut i64) (i64.const -467831625472020914))
(func $run (export "run")
    (local i32 i64 f64 i64 i32)
    (local $temp i32)
    ;;FLAG_0
    global.get $global_2302843215
    local.tee 0
    (i64.const -352)
    local.get 0
    i32.popcnt
    i64.extend_i32_s
    i64.rotr
    local.set 1
    i32.extend8_s
    (br_table 0)
    ;;FLAG_1
    (i32.const -6627674)
    f64.convert_i32_u
    (i32.const -34)
    (i32.const -84640)
    i32.shr_s
    block
        ;;FLAG_4
        nop
        (f32.const -1.3852221032349813e-28)
        i32.reinterpret_f32
        f64.convert_i32_u
        local.set 2
    end

    ;;FLAG_2
    f64.convert_i32_u
    f64.lt
    (f32.const 2.6198618144487457e+35)
    (i64.const -6072874948412072917)
    local.tee 3
    f64.convert_i64_u
    i64.reinterpret_f64
    i64.clz
    global.get $global_2302843215
    local.tee 4
    f32.convert_i32_u
    f32.sqrt
    i32.reinterpret_f32
    i32.extend16_s
    i64.extend_i32_s
    global.set $global_362158315
    f64.convert_i64_s
    f64.sqrt
    f64.neg
    i64.trunc_f64_s
    i64.extend16_s
    local.set 1
    (f32.const -9.28709445314486e+19)
    f32.copysign
    i32.reinterpret_f32
    i32.shr_u
    (br_table 0)
    ;;FLAG_3
    (i32.const -846359)
    global.set $global_2302843215
    return
)

)