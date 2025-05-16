(module
(type $sig_function_2403867143 (func))
(type $sig_function_496929236 (func (param i32) (result i32)))
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_2700003056 (mut i64) (i64.const -1266993490865602822))
(global $global_2327577220 (mut i32) (i32.const 813874696))
(global $global_3814836985 (mut f32) (f32.const 4.3858026244949934e+18))
(func $function_2403867143 (export "function_2403867143")
    (local i32)
    (local $temp i32)
    (i32.const 1376101721)
    i32.extend8_s
    f32.convert_i32_u
    i64.trunc_f32_s
    i64.ctz
    f64.convert_i64_s
    f64.neg
    local.get 0
    i32.clz
    global.set $global_2327577220
    f32.demote_f64
    global.set $global_3814836985
    i32.const 9
    loop $b_loop_1852577459 (param i32)
        (i32.const -8039)
        local.set 0
        nop
        (f64.const 1.1349975546298047e-188)
        i64.reinterpret_f64
        i64.extend16_s
        f32.convert_i64_s
        i32.trunc_f32_u
        i64.extend_i32_u
        nop
        f32.convert_i64_u
        f64.promote_f32
        i32.trunc_f64_s
        i32.clz
        drop
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_1852577459
        drop
    end
)
(func $function_496929236 (export "function_496929236") (param i32) (result i32)
    (local funcref i64)
    (local $temp i32)
    (f64.const 1.7049379144615305e+37)
    call $function_2403867143
    f64.abs
    f64.trunc
    drop
    local.get 0
    f64.convert_i32_s
    ref.func $function_2403867143
    local.set 1
    i64.trunc_f64_u
    local.set 2
    (i64.const 7074)
    i32.wrap_i64
)
(func $run (export "run") (result i32)
    (local i64 i32 f64)
    (local $temp i32)
    (i32.const 201710440)
    i64.extend_i32_s
    local.set 0
    local.get 0
    global.set $global_2700003056
    nop
    (i64.const -96842)
    f64.reinterpret_i64
    (i32.const 779272855)
    local.set 1
    f64.floor
    local.set 2
    global.get $global_2700003056
    (i64.const -5493)
    i64.ge_u
    i32.extend16_s
    call $function_496929236
)

)