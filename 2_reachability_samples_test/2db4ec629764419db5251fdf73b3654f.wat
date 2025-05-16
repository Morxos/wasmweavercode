(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2263719178 (mut f64) (f64.const 4.245550892699464e+17))
(func $run (export "run")
    (local f64 f32 f64)
    (local $temp i32)
    block
        block
            ;;FLAG_1
            block
                ;;FLAG_3
                local.get 0
                global.set $global_2263719178
                (f32.const 2.335868313373869e+25)
                local.set 1
                (f32.const 3.587772072704072e+34)
                i32.reinterpret_f32
                (br_table 2 3 1 0)
                ;;FLAG_4
            end

            global.get $global_2263719178
            local.set 0
            (i32.const -78)
            i64.extend_i32_s
            i64.extend16_s
            nop
            f32.convert_i64_s
            i32.reinterpret_f32
            (br_table 2 0 1)
            ;;FLAG_2
        end

        global.get $global_2263719178
        local.tee 2
        f64.neg
        i32.trunc_f64_s
        (br_table 0 1)
        ;;FLAG_0
    end

    (f64.const 4.9731049372455994e-45)
    i32.trunc_f64_s
    i64.extend_i32_s
    i64.eqz
    (br_table 0)
)

)