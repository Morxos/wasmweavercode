(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_2999166331 (mut i32) (i32.const -365250612))
(global $global_845677851 (mut i64) (i64.const -7428318683584693662))
(global $global_568971067 (mut f32) (f32.const -6.854778249776464e+18))
(func $run (export "run") (result f32)
    (local f32 f32 i32 f64 f32)
    (local $temp i32)
    (f64.const 1.1884059312775957e-235)
    i32.trunc_f64_u
    global.set $global_2999166331
    global.get $global_2999166331
    drop
    (i64.const 4321961)
    global.set $global_845677851
    (i32.const -1621827235)
    if
        (i64.const 8)
        i64.clz
        i64.clz
        i64.extend16_s
        f64.convert_i64_u
        (i64.const 15)
        local.get 0
        f64.promote_f32
        i32.trunc_f64_u
        i32.extend8_s
        f32.convert_i32_u
        f32.ceil
        nop
        (i32.const 4624)
        local.set 2
        f32.floor
        local.set 0
        f32.convert_i64_s
        i32.reinterpret_f32
        i32.extend16_s
        (i64.const -65)
        (i32.const -57281)
        drop
        i64.extend8_s
        f32.convert_i64_s
        (i32.const 7848)
        i64.extend_i32_u
        f64.reinterpret_i64
        i32.trunc_f64_s
        i64.extend_i32_u
        drop
        local.get 0
        drop
        local.set 0
        global.set $global_2999166331
        nop
        i64.reinterpret_f64
        i64.extend8_s
        local.get 0
        drop
        drop
        i32.const 9
        loop $b_loop_3263759241 (param i32)
            global.get $global_2999166331
            f32.reinterpret_i32
            f32.ceil
            i32.const 9
            loop $b_loop_2122762266 (param i32)
                (i32.const 7584)
                f32.convert_i32_u
                f32.abs
                local.set 0
                (i32.const -445439)
                (f64.const 2.31507427080183e-15)
                f64.neg
                (f64.const 3.9618400870586306e-89)
                f64.le
                i32.ge_u
                br_if 2
                i32.const 1
                i32.sub
                local.tee $temp
                local.get $temp
                i32.const 0
                i32.gt_s
                br_if $b_loop_2122762266
                drop
            end
            global.set $global_568971067
            block
                (i32.const 39)
                f32.convert_i32_u
                f32.abs
                f32.trunc
                local.tee 4
                (f64.const 7.789002712506014e-286)
                local.set 3
                local.set 0
            end

            block
                (i32.const 49923313)
                i32.clz
                i32.clz
                i32.ctz
                global.set $global_2999166331
            end

            i32.const 1
            i32.sub
            local.tee $temp
            local.get $temp
            i32.const 0
            i32.gt_s
            br_if $b_loop_3263759241
            drop
        end
    else
        global.get $global_2999166331
        local.get 0
        local.get 0
        local.tee 1
        f32.min
        (i64.const -111552860)
        i64.ctz
        (f32.const -2.9824526095317827e-13)
        i64.trunc_f32_s
        i64.eq
        local.set 2
        drop
        block
            (i64.const 373520)
            f64.convert_i64_s
            local.set 3
            nop
            nop
            br 0
        end

        i32.extend16_s
        br_if 0
    end

    (f32.const -5.628148014580736e+35)
    f32.trunc
)

)