(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1944989526 (mut f32) (f32.const -1.951803907202089e+17))
(func $run (export "run")
    (local i32 i32 i32)
    (local $temp i32)
    ;;FLAG_0
    block
        ;;FLAG_3
        (i32.const -6)
        f64.convert_i32_s
        f64.floor
        (f32.const 1.110105366454827e-16)
        global.set $global_1944989526
        i64.trunc_f64_s
        f64.convert_i64_u
        f32.demote_f64
        f32.sqrt
        f32.floor
        nop
        i32.reinterpret_f32
        local.tee 0
        (br_table 0 1)
        ;;FLAG_4
    end

    ;;FLAG_1
    (i64.const -946594)
    i64.ctz
    i64.extend8_s
    i64.clz
    i64.ctz
    i64.extend32_s
    local.get 0
    local.tee 1
    f64.convert_i32_u
    f32.demote_f64
    i32.trunc_f32_u
    (i64.const 65266)
    i64.ctz
    i64.eqz
    i32.lt_u
    local.tee 2
    f32.convert_i32_u
    f32.sqrt
    f32.floor
    i32.trunc_f32_u
    f64.convert_i32_u
    f64.ceil
    nop
    i64.trunc_f64_s
    i64.clz
    i64.rotr
    f64.convert_i64_s
    f32.demote_f64
    i64.trunc_f32_s
    (f32.const 2.2672166203721557e+21)
    i32.reinterpret_f32
    i32.eqz
    f32.convert_i32_u
    i32.trunc_f32_u
    i32.extend16_s
    f64.convert_i32_u
    f64.trunc
    i64.trunc_f64_u
    f64.convert_i64_s
    i64.trunc_f64_u
    i64.mul
    i64.extend32_s
    i64.extend8_s
    f64.convert_i64_s
    f64.floor
    i32.trunc_f64_s
    (br_table 0)
    ;;FLAG_2
    br 0
)

)