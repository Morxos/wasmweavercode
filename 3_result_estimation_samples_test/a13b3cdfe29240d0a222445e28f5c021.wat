(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(global $global_1372322072 (mut f64) (f64.const 7.267046797335632e+18))
(global $global_3537937698 (mut i64) (i64.const -3483931895550286575))
(global $global_2563402737 (mut i32) (i32.const -1116812747))
(func $run (export "run") (result i64)
    (local i32 f64 f32 i32)
    (local $temp i32)
    nop
    (i32.const -302)
    block
        i32.const 9
        loop $b_loop_1192665059 (param i32)
            i32.const 9
            loop $b_loop_4071648883 (param i32)
                (i32.const -88)
                local.set 0
                (f64.const 9.292106380706078e+267)
                drop
                nop
                (i64.const -99782)
                global.get $global_1372322072
                global.set $global_1372322072
                (i32.const -290774)
                br_if 3
                f64.convert_i64_s
                (f32.const -3.971621022645167e-15)
                f32.floor
                i32.trunc_f32_s
                f32.reinterpret_i32
                f32.floor
                global.get $global_1372322072
                (i64.const 0)
                global.set $global_3537937698
                global.set $global_1372322072
                f32.floor
                f32.ceil
                drop
                local.tee 1
                i32.trunc_f64_s
                br_if 2
                nop
                (i32.const -905653371)
                br_if 2
                i32.const 1
                i32.sub
                local.tee $temp
                local.get $temp
                i32.const 0
                i32.gt_s
                br_if $b_loop_4071648883
                drop
            end
            block
                (f32.const 139417247285248.0)
                (f64.const 5.976683980981745e-264)
                i64.reinterpret_f64
                f64.reinterpret_i64
                i32.trunc_f64_s
                global.set $global_2563402737
                local.set 2
            end

            (f64.const 4.28044492023726e-191)
            f64.floor
            nop
            i64.trunc_f64_s
            global.set $global_3537937698
            i32.const 1
            i32.sub
            local.tee $temp
            local.get $temp
            i32.const 0
            i32.gt_s
            br_if $b_loop_1192665059
            drop
        end
        (f32.const 1.0425160468230388e-07)
        (f32.const -4.474365585783498e-29)
        f32.eq
        i32.extend16_s
        f32.convert_i32_s
        drop
    end

    local.tee 3
    (f64.const 1.8495637643315985e-206)
    f64.nearest
    local.set 1
    drop
    local.get 0
    i32.extend16_s
    i64.extend_i32_s
    (i64.const -2613285455871251501)
    i64.add
    local.get 0
    i32.clz
    i32.popcnt
    drop
)

)