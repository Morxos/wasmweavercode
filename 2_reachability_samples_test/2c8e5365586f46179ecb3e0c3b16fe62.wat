(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2895977704 (mut f32) (f32.const 7.094211200375849e+18))
(global $global_3543027100 (mut i64) (i64.const 8324876968573744581))
(func $run (export "run")
    (local i64)
    (local $temp i32)
    ;;FLAG_0
    block
        ;;FLAG_1
        nop
        (i64.const 29327259)
        i64.clz
        global.get $global_2895977704
        (f32.const -4.2253605673445415e-26)
        f32.div
        global.get $global_2895977704
        global.get $global_2895977704
        f32.eq
        drop
        drop
        f64.reinterpret_i64
        f64.ceil
        (f32.const 0.0)
        local.get 0
        i64.popcnt
        block
            nop
            local.get 0
            global.get $global_2895977704
            (i64.const 993843)
            f32.convert_i64_u
            f32.ne
            f64.convert_i32_u
            f64.nearest
            i32.trunc_f64_u
            drop
            i64.popcnt
            i64.extend16_s
            drop
        end

        ;;FLAG_2
        global.set $global_3543027100
        f32.neg
        (f32.const -1308547.5)
        f32.le
        i32.ctz
        i32.clz
        (i32.const 786381)
        i32.mul
        f64.convert_i32_u
        f64.le
        (br_table 0 1)
        ;;FLAG_3
        (i32.const 2883)
        (br_table 0 1)
        ;;FLAG_4
    end

    (i32.const 53421)
    f32.convert_i32_u
    f32.abs
    f32.abs
    i32.trunc_f32_u
    (br_table 0)
)

)