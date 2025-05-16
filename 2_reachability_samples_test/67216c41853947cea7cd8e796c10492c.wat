(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3477319330 (mut f32) (f32.const -4.762857322374496e+18))
(global $global_48229273 (mut i64) (i64.const 3182633905287211065))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    ;;FLAG_0
    block
        ;;FLAG_2
        block
            ;;FLAG_3
            (i64.const 265)
            (f32.const 0.0)
            global.set $global_3477319330
            i64.extend32_s
            f64.convert_i64_u
            (i32.const -62481)
            (i32.const -483271)
            i32.mul
            local.set 0
            i64.trunc_f64_s
            f64.convert_i64_u
            f64.ceil
            i64.reinterpret_f64
            i64.popcnt
            i64.ctz
            i64.eqz
            local.get 0
            i32.ge_u
            (br_table 0 2 1)
            ;;FLAG_4
        end

        nop
        (f64.const 3.4432185157551645e+177)
        i64.reinterpret_f64
        global.set $global_48229273
    end

    global.get $global_3477319330
    (f32.const -4.292591980572355e-39)
    f32.le
    i32.popcnt
    i32.eqz
    (br_table 0)
    ;;FLAG_1
    return
)

)