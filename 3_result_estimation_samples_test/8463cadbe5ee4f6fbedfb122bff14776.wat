(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_1843623759 (mut i32) (i32.const 1051640066))
(global $global_1496722320 (mut f32) (f32.const -2.7139498396069396e+18))
(global $global_16784680 (mut i64) (i64.const -7379298285362273928))
(func $run (export "run") (result f64)
    (local i32 i64 f32 f64 f64)
    (local $temp i32)
    block
        i32.const 9
        loop $b_loop_478961938 (param i32)
            i32.const 9
            loop $b_loop_2768537884 (param i32)
                (i32.const -4)
                i32.ctz
                global.set $global_1843623759
                (i64.const 646)
                i64.eqz
                f32.reinterpret_i32
                drop
                i32.const 1
                i32.sub
                local.tee $temp
                local.get $temp
                i32.const 0
                i32.gt_s
                br_if $b_loop_2768537884
                drop
            end
            (i32.const -59575469)
            if
                (i32.const 56711)
                f32.convert_i32_s
                f32.abs
                global.set $global_1496722320
                nop
            else
                global.get $global_1843623759
                local.tee 0
                drop
                nop
                (i64.const 331)
                local.set 1
            end

            i32.const 9
            loop $b_loop_2762148016 (param i32)
                (i32.const 14)
                local.set 0
                local.get 0
                global.set $global_1843623759
                local.get 0
                i32.extend8_s
                br_if 2
                i32.const 1
                i32.sub
                local.tee $temp
                local.get $temp
                i32.const 0
                i32.gt_s
                br_if $b_loop_2762148016
                drop
            end
            (f32.const -1.1541016333223123e+33)
            local.tee 2
            i32.reinterpret_f32
            if
                (f32.const 15738158080.0)
                drop
                local.get 0
                i64.extend_i32_u
                i64.extend8_s
                (f32.const -2.2363079147522097e+19)
                (f32.const -137263.96875)
                f32.copysign
                f32.trunc
                (f64.const 1.0514146460387062e+247)
                nop
                global.get $global_1843623759
                i32.clz
                global.set $global_1843623759
                i64.reinterpret_f64
                i64.eqz
                global.set $global_1843623759
                local.set 2
                f64.reinterpret_i64
                f64.sqrt
                (f64.const 2.8318183331207456e-44)
                f64.le
                i64.extend_i32_u
                global.get $global_1843623759
                i32.popcnt
                i64.extend_i32_u
                i64.le_u
                f64.convert_i32_u
                f64.trunc
                nop
                f64.floor
                local.get 0
                i32.clz
                drop
                i64.trunc_f64_u
                (f64.const 9.310847806865928e+72)
                nop
                f64.abs
                local.tee 3
                local.tee 4
                (i64.const -3009810)
                i64.extend16_s
                f64.convert_i64_s
                f64.floor
                i64.trunc_f64_s
                f64.reinterpret_i64
                f64.sub
                (i64.const -1)
                nop
                f64.reinterpret_i64
                f64.ge
                i32.extend8_s
                global.set $global_1843623759
                f32.convert_i64_u
                i64.trunc_f32_u
                i64.extend32_s
                local.set 1
            else
                local.get 0
                f64.convert_i32_s
                local.get 0
                i32.extend16_s
                f32.convert_i32_s
                f32.trunc
                drop
                i64.trunc_f64_s
                local.set 1
                (i32.const -4)
                i32.popcnt
                i64.extend_i32_u
                (i64.const 3051120562426464733)
                i64.clz
                i64.shr_s
                global.set $global_16784680
            end

            (i32.const -723142452)
            i32.extend8_s
            i32.extend8_s
            i32.extend8_s
            br_if 1
            i32.const 1
            i32.sub
            local.tee $temp
            local.get $temp
            i32.const 0
            i32.gt_s
            br_if $b_loop_478961938
            drop
        end
        (f32.const 6.292013609795586e-28)
        f32.neg
        i32.reinterpret_f32
        global.set $global_1843623759
    end

    global.get $global_1843623759
    local.get 0
    (f64.const 6.79227996836741e+201)
    f64.floor
    f64.abs
    drop
    global.get $global_1843623759
    i32.rem_s
    i32.shl
    i32.eqz
    f64.convert_i32_u
    i32.trunc_f64_u
    block (param i32) (result f64)
        i32.ctz
        f32.reinterpret_i32
        (f64.const 1.640840706984516e-294)
        f64.ceil
        i32.trunc_f64_u
        drop
        i64.trunc_f32_s
        (i64.const -281260)
        i64.gt_s
        f32.convert_i32_s
        i64.trunc_f32_s
        f64.convert_i64_u
        (f32.const 5.321733307053398e-16)
        i32.reinterpret_f32
        i64.extend_i32_u
        f64.convert_i64_u
        f64.max
    end

)

)