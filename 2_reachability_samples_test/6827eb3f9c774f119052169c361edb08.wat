(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1529712482 (mut f32) (f32.const -4.2748000537233326e+18))
(global $global_2828986507 (mut f64) (f64.const 1.2154327041130496e+18))
(func $run (export "run")
    (local f64 i64)
    (local $temp i32)
    block
        (i32.const 6052682)
        block
            block
                (f64.const 1.1601567120555988e+96)
                f64.ceil
                local.tee 0
                i64.reinterpret_f64
                local.tee 1
                f32.convert_i64_s
                f32.nearest
                global.set $global_1529712482
            end

            ;;FLAG_4
            (i64.const -8890)
            i64.extend8_s
            i64.extend16_s
            i64.clz
            i64.extend8_s
            f64.convert_i64_u
            (f64.const 5.963144185674943e+96)
            f64.lt
            (br_table 1 0 2)
            br 0
        end

        ;;FLAG_2
        f32.convert_i32_s
        f32.trunc
        global.get $global_1529712482
        f32.copysign
        f64.promote_f32
        i32.trunc_f64_s
        f64.convert_i32_s
        global.set $global_2828986507
        (f64.const 5.803174916794615e-168)
        f64.neg
        i32.trunc_f64_s
        (br_table 0 1)
        ;;FLAG_3
        nop
    end

    ;;FLAG_0
    nop
    (f32.const -1.1019405670603145e-14)
    i32.trunc_f32_s
    f64.convert_i32_u
    i32.trunc_f64_u
    (i32.const 922263703)
    i32.ge_u
    i32.extend16_s
    (br_table 0)
    ;;FLAG_1
)

)