(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(global $global_1151405565 (mut i64) (i64.const 8039233619899589805))
(global $global_2346699198 (mut f64) (f64.const -3.713389755305976e+18))
(global $global_1044219220 (mut f32) (f32.const 7.509858481512382e+18))
(func $run (export "run") (result i64)
    (local f32 i64 f64)
    (local $temp i32)
    i32.const 9
    loop $b_loop_207548833 (param i32)
        (i64.const -16475311)
        global.set $global_1151405565
        local.get 0
        local.set 0
        global.get $global_1151405565
        f32.convert_i64_s
        local.set 0
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_207548833
        drop
    end
    (f32.const -1.402995683258301e-22)
    global.get $global_1151405565
    i64.ctz
    global.get $global_1151405565
    i64.add
    global.get $global_1151405565
    i64.add
    (f64.const 4.1250721783030492e-224)
    global.set $global_2346699198
    nop
    local.tee 1
    i64.popcnt
    global.set $global_1151405565
    (f64.const 1.2860831127068826e-113)
    (f32.const 4.5365152480966453e+24)
    f32.ceil
    global.set $global_1044219220
    (f64.const 1.0794751949040039e-253)
    (i64.const -868220952)
    f64.convert_i64_s
    local.tee 2
    f64.min
    f64.lt
    i32.extend16_s
    i64.extend_i32_u
    f64.convert_i64_s
    (f32.const -969.5763549804688)
    local.set 0
    f64.nearest
    f64.nearest
    (i32.const 195310)
    i32.eqz
    i64.extend_i32_u
    f32.convert_i64_s
    f32.abs
    f32.ceil
    f64.promote_f32
    f64.min
    i32.trunc_f64_s
    i32.clz
    f32.convert_i32_u
    f32.sqrt
    f32.eq
    (f64.const 3.735073871349334e-297)
    f64.sqrt
    (f32.const -2.987317020597402e-05)
    local.set 0
    i32.trunc_f64_s
    i32.shr_u
    drop
    (f32.const 3.0372002737243382e-24)
    local.set 0
    (i64.const 393945197)
)

)