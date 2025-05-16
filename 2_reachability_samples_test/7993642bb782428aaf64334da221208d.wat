(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1449127691 (mut f64) (f64.const 3.563320494253406e+18))
(global $global_2086892236 (mut i32) (i32.const -75942209))
(global $global_1805975996 (mut f32) (f32.const 1.1819460002400174e+18))
(func $run (export "run")
    (local f64 i32)
    (local $temp i32)
    ;;FLAG_0
    local.get 0
    block (param f64)
        global.set $global_1449127691
        (f64.const 8.777675506859652e-165)
        drop
        (i32.const 449769880)
        local.tee 1
        local.get 0
        i32.trunc_f64_s
        local.set 1
        global.set $global_2086892236
        (i32.const 94)
        i32.eqz
        i64.extend_i32_s
        f64.convert_i64_s
        f64.floor
        local.set 0
        block
            global.get $global_1449127691
            f64.trunc
            i32.trunc_f64_u
            i64.extend_i32_s
            i64.eqz
            block (param i32) (result i64)
                ;;FLAG_3
                local.set 1
                nop
                nop
                nop
                local.get 0
                f32.demote_f64
                global.set $global_1805975996
                (i32.const -977835)
                (br_table 2 3 1)
                ;;FLAG_4
                br 1
                br 1
                (i32.const -957)
                i64.extend_i32_u
            end

            i64.clz
            f64.convert_i64_u
            local.set 0
        end

        ;;FLAG_2
    end

    ;;FLAG_1
    global.get $global_1449127691
    f64.floor
    i64.trunc_f64_s
    f64.reinterpret_i64
    nop
    i32.trunc_f64_s
    (br_table 0)
)

)