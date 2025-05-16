(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_47285226 (mut i32) (i32.const -502545251))
(global $global_3252457747 (mut i64) (i64.const 1124707408755579993))
(func $run (export "run")
    (local i32 i32 i64)
    (local $temp i32)
    block
        ;;FLAG_2
        (i64.const 938495)
        (i32.const 2)
        local.tee 0
        local.tee 1
        global.set $global_47285226
        local.tee 2
        i64.extend32_s
        global.set $global_3252457747
    end

    ;;FLAG_0
    (f32.const 1.166680739104079e-19)
    (f64.const 6.3500496075438986e-139)
    block (param f32 f64)
        ;;FLAG_3
        f64.floor
        f64.ceil
        f64.neg
        f64.ceil
        i32.trunc_f64_s
        global.get $global_47285226
        i32.shr_s
        f64.convert_i32_u
        f64.ceil
        i64.reinterpret_f64
        i64.eqz
        i32.ctz
        (i64.const 8)
        i64.extend16_s
        i64.clz
        i64.eqz
        i32.xor
        i32.clz
        i32.extend8_s
        i64.extend_i32_u
        (i64.const 53984898)
        i64.le_u
        (i32.const 621)
        i32.popcnt
        i32.le_s
        local.get 0
        i32.shl
        f32.convert_i32_u
        f32.le
        local.get 0
        i32.ge_s
        (br_table 1 0)
        ;;FLAG_4
    end

    ;;FLAG_1
    nop
)

)