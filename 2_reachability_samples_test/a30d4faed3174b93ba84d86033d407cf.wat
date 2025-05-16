(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(table $tab_3198375763 9 funcref)
(global $global_1239309668 (mut i64) (i64.const 3393152342915074590))
(global $global_3318849727 (mut i32) (i32.const -668388834))
(func $run (export "run")
    (local i32 f32)
    (local $temp i32)
    ;;FLAG_0
    block
        nop
        block
            ;;FLAG_2
            (i64.const 0)
            i64.extend8_s
            global.set $global_1239309668
            block
                local.get 0
                table.get $tab_3198375763
                drop
                nop
                global.get $global_1239309668
                f64.convert_i64_u
                i32.trunc_f64_s
                nop
                (br_table 3 0 1 2)
            end

            global.get $global_1239309668
            (f64.const 6.586269550156013e+53)
            i64.reinterpret_f64
            i64.ge_s
            (br_table 2 1 0)
            ;;FLAG_3
        end

        (i64.const -149)
        i64.popcnt
        local.get 0
        nop
        table.get $tab_3198375763
        global.get $global_1239309668
        f32.convert_i64_u
        drop
        drop
        (f64.const 4.0428936558812634e-122)
        i64.trunc_f64_s
        i64.mul
        block (param i64)
            ;;FLAG_4
            i64.eqz
            i32.eqz
            global.get $global_1239309668
            i32.wrap_i64
            i32.eqz
            i32.div_s
            global.set $global_3318849727
        end

    end

    ;;FLAG_1
    (i32.const -3)
    i32.extend16_s
    f64.convert_i32_u
    i64.trunc_f64_s
    global.get $global_1239309668
    i64.gt_u
    f32.convert_i32_u
    local.set 1
)

)