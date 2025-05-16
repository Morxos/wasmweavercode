(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2542368178 f32 (f32.const 5.217423466843603e+18))
(func $run (export "run")
    (local f32 i32 i32)
    (local $temp i32)
    block
        (i32.const -98499)
        i32.popcnt
        block
            ;;FLAG_1
            block
                ;;FLAG_3
                global.get $global_2542368178
                local.tee 0
                f32.trunc
                f32.nearest
                f32.sqrt
                local.get 0
                f32.ne
                (br_table 2 1 3 0)
                ;;FLAG_4
            end

            local.get 0
            local.get 0
            f32.ne
            i32.extend8_s
            local.set 1
            (f32.const 2.9497445966819977e+25)
            i32.reinterpret_f32
            (br_table 2 1 0)
            ;;FLAG_2
        end

        i32.extend16_s
        (f64.const 1.1591408963629597e-299)
        local.get 0
        f32.nearest
        drop
        i32.trunc_f64_s
        (i32.const 546471)
        i32.rem_u
        i32.lt_u
        (br_table 0 1)
        (f32.const -1.5890340800996106e-13)
        i32.trunc_f32_s
        local.tee 2
        (br_table 1 0)
    end

    (f64.const 1.470683844562552e+218)
    i64.reinterpret_f64
    i64.eqz
    i32.clz
    f32.convert_i32_u
    f64.promote_f32
    (f32.const -1.1602210057852597e-33)
    i32.reinterpret_f32
    i64.extend_i32_u
    f64.convert_i64_s
    (f32.const 7.373783903951105e-30)
    local.set 0
    f64.lt
    (br_table 0)
    ;;FLAG_0
)

)