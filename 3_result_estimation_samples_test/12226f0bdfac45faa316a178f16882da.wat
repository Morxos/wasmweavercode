(module
(type $sig_function_916757268 (func))
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_1214560321 (mut f64) (f64.const -3.8574462090921615e+18))
(global $global_3539228539 (mut i32) (i32.const 758288721))
(func $function_916757268 (export "function_916757268")
    (local i64 f64 f64)
    (local $temp i32)
    (f32.const 1.4822788984471552e+16)
    f32.floor
    (i32.const -1319)
    f64.convert_i32_u
    (i64.const 61283814)
    i64.extend32_s
    f64.convert_i64_u
    f64.lt
    i32.extend8_s
    f32.convert_i32_s
    f32.eq
    f64.convert_i32_u
    (f64.const 3.0767644481073196e+264)
    drop
    local.get 0
    f64.convert_i64_s
    i64.trunc_f64_u
    f64.convert_i64_s
    f64.copysign
    local.tee 1
    f64.floor
    local.tee 2
    (f64.const 1.4547145677021777e-277)
    f64.min
    i32.trunc_f64_s
    i32.clz
    i32.popcnt
    br_if 0
)
(func $run (export "run") (result f64)
    (local i64 i32 f64 f32)
    (local $temp i32)
    i32.const 9
    loop $b_loop_1988633678 (param i32)
        i32.const 9
        loop $b_loop_3366836413 (param i32)
            (i64.const 4)
            drop
            (i64.const -33)
            (i64.const 458554)
            i64.div_s
            (i64.const 0)
            local.set 0
            nop
            f64.convert_i64_s
            global.set $global_1214560321
            nop
            i32.const 1
            i32.sub
            local.tee $temp
            local.get $temp
            i32.const 0
            i32.gt_s
            br_if $b_loop_3366836413
            drop
        end
        (f32.const 2.3135853686139223e-15)
        f64.promote_f32
        f64.floor
        (i32.const 2717929)
        global.set $global_3539228539
        i32.const 9
        loop $b_loop_2638646323 (param i32)
            (i64.const 63212)
            f64.convert_i64_s
            global.set $global_1214560321
            global.get $global_1214560321
            (i32.const 29568)
            local.tee 1
            br_if 2
            i64.trunc_f64_u
            i64.extend16_s
            i32.wrap_i64
            i64.extend_i32_s
            f64.convert_i64_u
            f64.sqrt
            f64.floor
            f64.floor
            i64.reinterpret_f64
            local.set 0
            i32.const 1
            i32.sub
            local.tee $temp
            local.get $temp
            i32.const 0
            i32.gt_s
            br_if $b_loop_2638646323
            drop
        end
        local.set 2
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_1988633678
        drop
    end
    (i64.const 8)
    f64.reinterpret_i64
    local.get 0
    f64.reinterpret_i64
    (f32.const -1.5519434312149138e+37)
    call $function_916757268
    local.set 3
    drop
)

)