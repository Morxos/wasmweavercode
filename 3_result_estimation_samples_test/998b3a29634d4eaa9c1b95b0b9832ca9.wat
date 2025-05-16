(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_698745662 (mut i32) (i32.const 1237225279))
(global $global_3776082788 (mut f64) (f64.const -6.027610918826242e+18))
(global $global_1361378634 (mut i64) (i64.const 8640787964692474631))
(global $global_2620368708 (mut f32) (f32.const -4.1386978315128013e+18))
(func $run (export "run") (result f64)
    (local i32 f64 f64)
    (local $temp i32)
    (i64.const -7)
    block
        i32.const 9
        loop $b_loop_4026749666 (param i32)
            i32.const 9
            loop $b_loop_2372297376 (param i32)
                global.get $global_698745662
                i32.clz
                i32.popcnt
                (f64.const 1.9613511879287534e+97)
                drop
                i64.extend_i32_s
                f64.reinterpret_i64
                f64.ceil
                i32.trunc_f64_s
                br_if 2
                (i32.const 29269521)
                i32.clz
                global.set $global_698745662
                (f32.const 1.6938362370091572e+28)
                f32.abs
                (f32.const -3.164757799822837e-06)
                i32.reinterpret_f32
                i32.extend16_s
                global.get $global_698745662
                i32.rem_u
                f64.convert_i32_s
                f64.ceil
                global.set $global_3776082788
                f32.floor
                f64.promote_f32
                (i64.const 90403)
                f64.convert_i64_s
                f64.mul
                drop
                global.get $global_698745662
                (f64.const 3.540270318125091e+127)
                (f32.const -238678425600.0)
                i32.reinterpret_f32
                drop
                drop
                i32.clz
                global.set $global_698745662
                i32.const 1
                i32.sub
                local.tee $temp
                local.get $temp
                i32.const 0
                i32.gt_s
                br_if $b_loop_2372297376
                drop
            end
            (i64.const 28778526)
            global.set $global_1361378634
            (f64.const 6.861824604739246e+170)
            drop
            i32.const 1
            i32.sub
            local.tee $temp
            local.get $temp
            i32.const 0
            i32.gt_s
            br_if $b_loop_4026749666
            drop
        end
        (f32.const -2.969351535587389e-34)
        i64.trunc_f32_s
        i64.extend32_s
        f64.reinterpret_i64
        f32.demote_f64
        nop
        drop
    end

    drop
    (i32.const -30)
    (i64.const -17656)
    f32.convert_i64_s
    i32.reinterpret_f32
    i32.shl
    drop
    (f32.const -9390065664.0)
    f32.floor
    i32.reinterpret_f32
    f32.reinterpret_i32
    local.get 0
    f64.convert_i32_u
    f64.sqrt
    i32.trunc_f64_s
    i32.extend8_s
    (i64.const -2)
    f32.convert_i64_s
    (f32.const -7603935744.0)
    f32.min
    (i32.const 666624367)
    (i64.const -8024711148438573264)
    f64.reinterpret_i64
    i64.trunc_f64_s
    drop
    f32.convert_i32_u
    i32.reinterpret_f32
    f32.convert_i32_s
    f32.min
    f64.promote_f32
    f64.nearest
    f64.nearest
    f64.nearest
    f32.demote_f64
    global.set $global_2620368708
    local.set 0
    global.set $global_2620368708
    (i64.const 74247)
    f64.reinterpret_i64
    local.tee 1
    i64.reinterpret_f64
    f32.convert_i64_s
    i64.trunc_f32_s
    (i32.const -4)
    global.set $global_698745662
    f64.convert_i64_u
    local.tee 2
)

)