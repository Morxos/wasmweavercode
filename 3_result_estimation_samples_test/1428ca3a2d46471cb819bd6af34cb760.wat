(module
(type $sig_function_2201523108 (func (param f32)))
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_3864556905 (mut f32) (f32.const 3.593566838409134e+18))
(global $global_362594126 (mut f64) (f64.const -5.472873128463966e+18))
(global $global_1152383751 (mut i32) (i32.const 1591136106))
(global $global_2459258816 (mut i64) (i64.const -3202050180557474179))
(func $function_2201523108 (export "function_2201523108") (param f32)
    (local $temp i32)
    (i64.const 84)
    f64.reinterpret_i64
    f32.demote_f64
    (f64.const 2.2182579659774443e-42)
    global.set $global_362594126
    i64.trunc_f32_s
    i32.wrap_i64
    global.set $global_1152383751
)
(func $run (export "run") (result f64)
    (local i64 f64 i32)
    (local $temp i32)
    i32.const 9
    loop $b_loop_2992303052 (param i32)
        local.get 0
        i32.wrap_i64
        f64.convert_i32_s
        local.set 1
        (f64.const 5.903611734231646e-191)
        f64.abs
        i32.trunc_f64_s
        drop
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_2992303052
        drop
    end
    (i32.const 597337711)
    f32.convert_i32_u
    (f32.const -7.062278798215996e-35)
    f32.neg
    (f64.const 7.428178126960487e+169)
    nop
    drop
    global.set $global_3864556905
    global.set $global_3864556905
    global.get $global_3864556905
    call $function_2201523108
    (i32.const -75)
    f32.convert_i32_u
    global.set $global_3864556905
    nop
    (i64.const 3048412801502633859)
    global.set $global_2459258816
    i32.const 9
    loop $b_loop_245141936 (param i32)
        global.get $global_3864556905
        f32.trunc
        f32.sqrt
        (f64.const 2.2384725337934253e-147)
        i64.trunc_f64_s
        global.set $global_2459258816
        i32.reinterpret_f32
        local.set 2
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_245141936
        drop
    end
    global.get $global_3864556905
    i64.trunc_f32_s
    f64.reinterpret_i64
)

)