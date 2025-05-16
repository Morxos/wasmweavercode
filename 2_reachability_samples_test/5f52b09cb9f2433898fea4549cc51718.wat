(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2182602974 (mut i32) (i32.const -176169239))
(func $run (export "run")
    (local i64 i32)
    (local $temp i32)
    local.get 0
    local.set 0
    block
        ;;FLAG_0
        block
            block
                (i64.const 1670211066957593798)
                local.set 0
                (i64.const 57940)
                local.get 0
                i64.or
                i64.eqz
                (br_table 1 3 2 0)
            end

            (i64.const 3)
            f32.convert_i64_u
            i32.trunc_f32_u
            i64.extend_i32_s
            i64.extend32_s
            (i64.const 88751964)
            i64.eq
            (br_table 0 1 2)
            ;;FLAG_3
            (f32.const 2.969348016340076e-20)
            nop
            i64.trunc_f32_u
            i32.wrap_i64
            (br_table 1 2 0)
            ;;FLAG_4
        end

        ;;FLAG_1
        (f64.const 1.2940316453892846e+131)
        nop
        i64.reinterpret_f64
        (i32.const 294730086)
        i32.eqz
        (i32.const -2027324004)
        i32.shr_s
        local.set 1
        f64.reinterpret_i64
        i64.reinterpret_f64
        nop
        i64.extend16_s
        i64.eqz
        (br_table 0 1)
        ;;FLAG_2
    end

    global.get $global_2182602974
    i32.popcnt
    i32.extend8_s
    local.set 1
)

)