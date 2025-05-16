(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2621448892 (mut i32) (i32.const 449574430))
(func $run (export "run")
    (local f64)
    (local $temp i32)
    block
        block
            ;;FLAG_1
            block
                ;;FLAG_3
                (i64.const -6)
                f64.convert_i64_u
                local.tee 0
                f64.ceil
                f64.sqrt
                local.get 0
                f64.le
                i32.popcnt
                (br_table 2 1 3 0)
                ;;FLAG_4
            end

            ;;FLAG_2
            (f64.const 6.101380662544929e-26)
            i32.trunc_f64_s
            i32.ctz
            global.set $global_2621448892
            nop
        end

        nop
        global.get $global_2621448892
        i32.extend16_s
        i64.extend_i32_s
        i64.extend16_s
        local.get 0
        i64.reinterpret_f64
        i64.eq
        (br_table 1 0)
        return
    end

    ;;FLAG_0
    (i32.const -62)
    i64.extend_i32_s
    i64.eqz
    global.get $global_2621448892
    i32.lt_u
    (br_table 0)
    nop
)

)