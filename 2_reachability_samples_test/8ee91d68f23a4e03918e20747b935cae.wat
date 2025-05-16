(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1141360170 (mut f64) (f64.const -3.5172458532509164e+18))
(global $global_3555153571 (mut i64) (i64.const 4214275668058651241))
(func $run (export "run")
    (local f64 f32)
    (local $temp i32)
    ;;FLAG_0
    block
        block
            ;;FLAG_3
            (i64.const 22395546)
            i32.wrap_i64
            local.get 0
            global.set $global_1141360170
            f32.convert_i32_s
            (f32.const 1.711663302657486e-31)
            nop
            f32.copysign
            local.tee 1
            f32.sqrt
            i32.trunc_f32_u
            (i64.const 9490)
            global.set $global_3555153571
            nop
            (br_table 1 2 0)
            ;;FLAG_4
        end

        (i32.const -83)
        i32.popcnt
        i64.extend_i32_s
        (f64.const 2.631807781688892e+124)
        i64.reinterpret_f64
        i64.le_u
        (br_table 1 0)
        ;;FLAG_2
    end

    ;;FLAG_1
    (i32.const -806)
    (f64.const 1.2710466982721262e-234)
    drop
    i32.clz
    i32.eqz
    (br_table 0)
)

)