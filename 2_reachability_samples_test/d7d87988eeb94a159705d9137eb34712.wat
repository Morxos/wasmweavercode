(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1552041373 (mut i64) (i64.const 5029377864817650186))
(global $global_3022262567 (mut f32) (f32.const -4.880039423372165e+18))
(global $global_2275455684 (mut i32) (i32.const -1709199549))
(func $run (export "run")
    (local f32 f64 i32)
    (local $temp i32)
    (i32.const -100)
    i32.popcnt
    local.get 0
    block
        block
            ;;FLAG_4
            block
                nop
                global.get $global_1552041373
                f64.convert_i64_s
                local.tee 1
                f32.demote_f64
                global.set $global_3022262567
                nop
            end

            (i64.const 90351641)
            f32.convert_i64_s
            f32.abs
            global.get $global_1552041373
            (f32.const -0.012941676191985607)
            f32.trunc
            i64.trunc_f32_s
            i64.eq
            local.set 2
            drop
        end

        ;;FLAG_2
        global.get $global_1552041373
        i64.ctz
        f32.convert_i64_u
        i64.trunc_f32_u
        (i32.const 26)
        (i64.const -2)
        (i64.const 1726)
        i64.extend32_s
        i64.eq
        i32.shr_s
        (i64.const -41848214)
        i64.eqz
        i32.lt_u
        i64.extend_i32_s
        i64.eq
        i32.clz
        i64.extend_i32_s
        i64.eqz
        f64.convert_i32_s
        i32.trunc_f64_s
        (br_table 0 1)
        ;;FLAG_3
    end

    ;;FLAG_0
    i32.trunc_f32_u
    global.set $global_2275455684
    (br_table 0)
    ;;FLAG_1
)

)