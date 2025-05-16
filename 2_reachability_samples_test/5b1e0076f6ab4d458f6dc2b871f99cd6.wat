(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2162055077 (mut i32) (i32.const 1166983864))
(global $global_2315820289 (mut f64) (f64.const 2.3698056157699625e+18))
(func $run (export "run")
    (local i32 f64 f32)
    (local $temp i32)
    ;;FLAG_0
    block
        ;;FLAG_2
        block
            ;;FLAG_4
            (i32.const 6523)
            local.tee 0
            global.set $global_2162055077
            block
                (f64.const 0.0)
                global.set $global_2315820289
                global.get $global_2162055077
                global.set $global_2162055077
                (f64.const 1.0333810397823001e+83)
                local.set 1
                nop
            end

            local.get 0
            (br_table 2 0 1)
        end

        (f32.const 2.3158324867979224e-31)
        i32.trunc_f32_u
        f32.convert_i32_s
        global.get $global_2162055077
        global.set $global_2162055077
        i32.trunc_f32_u
        (br_table 0 1)
        ;;FLAG_3
    end

    ;;FLAG_1
    (f64.const 4.782747658561661e+67)
    i64.reinterpret_f64
    i64.extend16_s
    i64.extend32_s
    f32.convert_i64_s
    local.set 2
    (i64.const -7)
    i64.ctz
    i64.clz
    f64.reinterpret_i64
    drop
)

)