(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2354589675 (mut f32) (f32.const -9.080034753255571e+18))
(func $run (export "run")
    (local f64 i32 i32 i32)
    (local $temp i32)
    block
        local.get 0
        f64.trunc
        i64.trunc_f64_u
        drop
        block
            block
                ;;FLAG_3
                (i32.const 659883517)
                local.tee 1
                (i32.const 1854712152)
                i32.and
                local.tee 2
                (br_table 0 1 2 3)
                ;;FLAG_4
            end

            (i32.const -28221)
            f64.convert_i32_u
            f64.ceil
            f32.demote_f64
            global.get $global_2354589675
            f32.le
            (br_table 0 1 2)
            ;;FLAG_2
        end

        ;;FLAG_1
    end

    (f64.const 3.370604729469488e+215)
    i64.reinterpret_f64
    (i32.const 40)
    f32.convert_i32_u
    i32.trunc_f32_u
    f64.convert_i32_s
    i32.trunc_f64_s
    local.tee 3
    i64.extend_i32_s
    i64.eq
    (br_table 0)
    ;;FLAG_0
)

)