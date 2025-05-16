(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_932571940 (mut f64) (f64.const 4.957801613111237e+18))
(func $run (export "run")
    (local i32 f32 f32 i64 i32)
    (local $temp i32)
    (i64.const -86483)
    i64.popcnt
    f32.convert_i64_u
    (i32.const 687043)
    local.tee 0
    i32.clz
    local.set 0
    local.tee 1
    i32.trunc_f32_u
    (br_table 0)
    ;;FLAG_0
    (f32.const 0.0)
    i32.trunc_f32_u
    (br_table 0)
    ;;FLAG_1
    (i64.const -63)
    local.get 0
    (i64.const 77416)
    i64.eqz
    i32.shr_s
    if (param i64) (result i32)
        ;;FLAG_3
        local.set 3
        local.get 0
        local.get 0
        i32.shl
        local.tee 4
        i32.extend8_s
        nop
    else
        ;;FLAG_4
        i64.extend8_s
        i64.clz
        i64.clz
        i64.ctz
        f32.convert_i64_s
        f64.promote_f32
        i64.reinterpret_f64
        i64.eqz
        f64.convert_i32_s
        f64.trunc
        global.set $global_932571940
        (f32.const 1466857227812864.0)
        local.tee 2
        drop
        (i32.const 866)
    end

    i64.extend_i32_s
    local.get 0
    i64.extend_i32_s
    i64.rotl
    f32.convert_i64_s
    i64.trunc_f32_u
    i64.clz
    f64.reinterpret_i64
    i32.trunc_f64_s
    (br_table 0)
    ;;FLAG_2
)

)