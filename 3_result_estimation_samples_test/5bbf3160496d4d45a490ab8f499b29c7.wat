(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_3012136345 (mut f64) (f64.const 5.370482208283666e+18))
(global $global_3640889269 (mut f32) (f32.const 5.037523573330149e+18))
(global $global_686428745 (mut i32) (i32.const -838675299))
(func $run (export "run") (result f64)
    (local i32 f32 f64)
    (local $temp i32)
    i32.const 9
    loop $b_loop_398490609 (param i32)
        i32.const 9
        loop $b_loop_1918222518 (param i32)
            local.get 0
            nop
            nop
            i32.eqz
            local.set 0
            i32.const 1
            i32.sub
            local.tee $temp
            local.get $temp
            i32.const 0
            i32.gt_s
            br_if $b_loop_1918222518
            drop
        end
        (i64.const -459448635272765725)
        i64.ctz
        f32.convert_i64_s
        f32.abs
        f64.promote_f32
        global.set $global_3012136345
        (i32.const 714)
        f64.convert_i32_u
        i64.trunc_f64_u
        f32.convert_i64_u
        local.set 1
        i32.const 9
        loop $b_loop_3712991570 (param i32)
            (i32.const 76307431)
            i64.extend_i32_s
            nop
            i32.wrap_i64
            f32.reinterpret_i32
            local.get 0
            f32.convert_i32_s
            i64.trunc_f32_u
            f64.convert_i64_s
            f64.floor
            local.tee 2
            global.set $global_3012136345
            (f64.const 8.154697929395661e-181)
            local.set 2
            local.set 1
            (f64.const 4.028834415024217e-193)
            br 2
            i64.reinterpret_f64
            f32.convert_i64_u
            global.set $global_3640889269
            i32.const 1
            i32.sub
            local.tee $temp
            local.get $temp
            i32.const 0
            i32.gt_s
            br_if $b_loop_3712991570
            drop
        end
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_398490609
        drop
    end
    (i32.const -787)
    global.set $global_686428745
    local.get 0
    i64.extend_i32_s
    (i32.const -53156432)
    i64.extend_i32_s
    i64.mul
    i64.extend16_s
    f64.reinterpret_i64
)

)