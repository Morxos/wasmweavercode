(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_233917352 (mut i64) (i64.const -4029614384052906257))
(func $run (export "run")
    (local f64 f32 f32)
    (local $temp i32)
    block
        ;;FLAG_2
        block
            block
                (i64.const 846)
                global.set $global_233917352
                (i64.const -8949577)
                i64.extend32_s
                global.set $global_233917352
            end

            block
                (i32.const -7)
                f32.convert_i32_s
                i32.reinterpret_f32
                f64.convert_i32_u
                i64.trunc_f64_s
                f64.convert_i64_u
                local.tee 0
                f64.trunc
                drop
                br 0
            end

            (f32.const -8.3524685269994e-31)
            local.tee 1
            nop
            f32.neg
            i32.trunc_f32_u
            (br_table 0 1 2)
            ;;FLAG_4
        end

        ;;FLAG_3
        (f64.const 8.33347205007565e+103)
        i64.reinterpret_f64
        f32.convert_i64_u
        local.tee 2
        i32.reinterpret_f32
        i32.popcnt
        i32.eqz
        (br_table 1 0)
    end

    ;;FLAG_0
    (f64.const 5.185533603256074e-24)
    i64.trunc_f64_u
    i64.extend32_s
    i64.clz
    i64.eqz
    (br_table 0)
    ;;FLAG_1
)

)