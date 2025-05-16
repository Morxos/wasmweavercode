(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_17208436 (mut f64) (f64.const -2.5277952501944996e+18))
(global $global_3675076850 (mut i64) (i64.const 7713694975533015868))
(func $run (export "run") (result f64)
    (local f64 f64 i32 i64)
    (local $temp i32)
    i32.const 9
    loop $b_loop_1561347928 (param i32)
        global.get $global_17208436
        i32.const 9
        loop $b_loop_1330068262 (param i32)
            nop
            (f32.const -4.73671122503231e-18)
            i32.trunc_f32_s
            f64.convert_i32_s
            local.tee 0
            return
            i32.trunc_f64_s
            i64.extend_i32_u
            global.set $global_3675076850
            i32.const 1
            i32.sub
            local.tee $temp
            local.get $temp
            i32.const 0
            i32.gt_s
            br_if $b_loop_1330068262
            drop
        end
        local.tee 1
        drop
        (i32.const -100)
        local.set 2
        local.get 0
        i32.trunc_f64_u
        i64.extend_i32_u
        f32.convert_i64_s
        f32.neg
        drop
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_1561347928
        drop
    end
    (i64.const 72)
    (i64.const 4921090037155958683)
    i64.rotr
    i64.popcnt
    i64.ctz
    local.set 3
    (f32.const 1.1727349646939444e-10)
    drop
    (i64.const -257709)
    (f64.const 2.4009117277045333e+216)
    local.set 0
    f64.reinterpret_i64
    br 0
)

)