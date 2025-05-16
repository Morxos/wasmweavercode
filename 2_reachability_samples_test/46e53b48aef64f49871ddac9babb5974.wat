(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_4231082297 (mut f64) (f64.const -8.585250099138357e+18))
(func $run (export "run")
    (local f64)
    (local $temp i32)
    block
        ;;FLAG_0
        block
            ;;FLAG_2
            local.get 0
            global.set $global_4231082297
            block
                ;;FLAG_3
                nop
                (f64.const 3.9424560890837006e-137)
                f64.neg
                f64.trunc
                f64.floor
                f32.demote_f64
                (f32.const -1.91985949406077e-22)
                f32.ceil
                f32.le
                (br_table 0 3 1 2)
                ;;FLAG_4
            end

            local.get 0
            global.set $global_4231082297
        end

        ;;FLAG_1
        (f32.const -6.84526568761612e-09)
        i32.reinterpret_f32
        local.get 0
        i32.trunc_f64_u
        i32.xor
        (br_table 0 1)
        nop
    end

    (f32.const 6.364911310681454e-13)
    (f32.const 1.3663770914718043e-06)
    f64.promote_f32
    drop
    f32.trunc
    i32.trunc_f32_u
    (br_table 0)
)

)