(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_4235492823 (mut f32) (f32.const -7.175357907284787e+18))
(func $run (export "run")
    (local f64 i32)
    (local $temp i32)
    block
        block
            ;;FLAG_2
            block
                (f32.const 13537863.0)
                global.set $global_4235492823
                (f64.const 7.61941182784795e+50)
                i64.reinterpret_f64
                f64.convert_i64_u
                f64.sqrt
                local.tee 0
                f32.demote_f64
                i32.trunc_f32_u
                br_if 0
                ;;FLAG_4
            end

            ;;FLAG_3
            (f64.const 1.7325289364275387e-295)
            i32.trunc_f64_s
            (i32.const 24069)
            i32.lt_u
            local.get 0
            f32.demote_f64
            (f32.const -69385234415616.0)
            f32.le
            i32.gt_s
            (br_table 0 1 2)
        end

        (i32.const 51307)
        local.tee 1
        i32.clz
        i32.extend8_s
        i32.popcnt
        local.get 0
        f64.nearest
        drop
        nop
        (br_table 1 0)
        ;;FLAG_1
    end

    (f64.const 2.730319416137977e-05)
    (i64.const 7020882)
    i64.popcnt
    i64.extend16_s
    f64.convert_i64_u
    f64.ge
    (br_table 0)
    ;;FLAG_0
)

)