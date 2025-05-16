(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2822324586 (mut f32) (f32.const 7.189618023341228e+18))
(func $run (export "run")
    (local f32 f64 f64)
    (local $temp i32)
    ;;FLAG_0
    block
        block
            block
                (f32.const 95580.2421875)
                local.tee 0
                i32.reinterpret_f32
                f32.convert_i32_u
                drop
            end

            (f32.const -3.6319335469232026e-16)
            i64.trunc_f32_s
            i64.ctz
            f64.convert_i64_u
            f64.abs
            local.set 1
            return
        end

        (f32.const -893839401287680.0)
        f32.nearest
        global.set $global_2822324586
        (i32.const -88)
        (br_table 1 0)
        ;;FLAG_4
    end

    ;;FLAG_1
    (i32.const 0)
    i32.clz
    (f32.const 2.354785900359743e-22)
    f64.promote_f32
    (f32.const 4.871257752243907e+37)
    f64.promote_f32
    local.tee 2
    f64.le
    i32.le_u
    (br_table 0)
    ;;FLAG_2
    (f32.const 1.8354282026921557e+29)
    f32.nearest
    (f64.const 9.004790551177613e-43)
    i32.trunc_f64_u
    f32.convert_i32_s
    f32.ne
    (br_table 0)
    ;;FLAG_3
)

)