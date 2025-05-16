(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3157229676 (mut i32) (i32.const 2050129435))
(func $run (export "run")
    (local i64 i32)
    (local $temp i32)
    ;;FLAG_0
    block
        ;;FLAG_1
        block
            ;;FLAG_3
            global.get $global_3157229676
            i32.popcnt
            i32.extend16_s
            i32.clz
            f32.reinterpret_i32
            block (param f32)
                (f32.const -3.085742080109253e-23)
                f32.le
                (f32.const -2195149291520.0)
                (f64.const 4.3246635186612843e-246)
                f64.nearest
                f64.ceil
                i32.trunc_f64_s
                nop
                f32.convert_i32_u
                f32.le
                i32.ne
                (br_table 1 3 0 2)
                return
            end

            ;;FLAG_4
        end

        (f32.const 0.0)
        nop
        f32.trunc
        i32.trunc_f32_s
        local.get 0
        drop
        local.tee 1
        (br_table 1 0)
        (f32.const 0.0)
        (f32.const 2.624126448356557e+16)
        f32.ne
        (i32.const -264437335)
        i32.add
        i32.extend16_s
        (br_table 1 0)
        ;;FLAG_2
    end

    nop
    (f32.const 9.975390413196919e-20)
    i32.trunc_f32_s
    i32.clz
    (br_table 0)
)

)