(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3004539752 (mut f32) (f32.const 2.2057397597692232e+18))
(func $run (export "run")
    (local i64 f32 i64)
    (local $temp i32)
    block
        ;;FLAG_0
        block
            ;;FLAG_2
            block
                nop
                local.get 0
                i32.wrap_i64
                f32.reinterpret_i32
                (f32.const -5.740502501808327e+37)
                f32.le
                (br_table 1 2 0 3)
                ;;FLAG_4
                local.get 0
                f32.convert_i64_u
                local.get 0
                f32.convert_i64_u
                f32.min
                global.set $global_3004539752
            end

            ;;FLAG_3
            (f32.const 1.5205033687145152e-21)
            i32.trunc_f32_u
            drop
            (f32.const -236232596520960.0)
            local.tee 1
            f32.floor
            f32.ceil
            local.get 0
            f32.convert_i64_u
            f32.le
            (br_table 0 2 1)
            local.get 0
            local.tee 2
            drop
        end

        (f32.const 0.0)
        i64.trunc_f32_u
        drop
        local.get 0
        local.get 0
        i64.ne
        i32.extend8_s
        (br_table 0 1)
        ;;FLAG_1
    end

    global.get $global_3004539752
    f32.trunc
    i64.trunc_f32_u
    i32.wrap_i64
    (br_table 0)
)

)