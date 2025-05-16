(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_319815821 (mut i32) (i32.const -1966883042))
(global $global_2719711292 (mut f64) (f64.const 1.8056015189997834e+18))
(func $run (export "run") (result f64)
    (local f64 i64 f32)
    (local $temp i32)
    i32.const 9
    loop $b_loop_3087512099 (param i32)
        i32.const 9
        loop $b_loop_3134228744 (param i32)
            i32.const 9
            loop $b_loop_3175788073 (param i32)
                (f32.const -145704651587584.0)
                (i64.const 6332266743534892383)
                i64.eqz
                i64.extend_i32_s
                f32.convert_i64_u
                f32.min
                f32.abs
                f64.promote_f32
                nop
                local.set 0
                i32.const 1
                i32.sub
                local.tee $temp
                local.get $temp
                i32.const 0
                i32.gt_s
                br_if $b_loop_3175788073
                drop
            end
            local.get 0
            (f64.const 1.7778074331716606e+199)
            f64.copysign
            f64.floor
            (i32.const 9)
            f32.convert_i32_u
            i64.trunc_f32_s
            i64.extend8_s
            local.set 1
            return
            f64.nearest
            nop
            f32.demote_f64
            block
                (i32.const -5)
                global.set $global_319815821
                local.get 0
                f64.floor
                (i64.const -3519660)
                i64.extend32_s
                f64.convert_i64_u
                global.set $global_2719711292
                (i64.const 566456)
                f64.convert_i64_u
                local.set 0
                (i32.const -285502)
                global.set $global_319815821
                f64.floor
                f64.ceil
                drop
            end

            i32.reinterpret_f32
            i32.clz
            i32.extend8_s
            f64.convert_i32_s
            f64.sqrt
            i32.trunc_f64_s
            drop
            i32.const 1
            i32.sub
            local.tee $temp
            local.get $temp
            i32.const 0
            i32.gt_s
            br_if $b_loop_3134228744
            drop
        end
        local.get 0
        nop
        f64.floor
        f64.floor
        f64.floor
        f64.sqrt
        f64.trunc
        local.set 0
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_3087512099
        drop
    end
    nop
    (f32.const -519091781632.0)
    local.tee 2
    nop
    i64.trunc_f32_s
    f64.convert_i64_u
)

)