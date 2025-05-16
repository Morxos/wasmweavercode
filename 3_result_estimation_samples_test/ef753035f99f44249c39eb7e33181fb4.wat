(module
(type $sig_function_2622337635 (func (param i32)))
(type $sig_function_3565538445 (func))
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_3604861172 (mut i64) (i64.const -1284044405556768825))
(global $global_264129130 (mut f64) (f64.const 5.040872265639156e+18))
(global $global_4256370909 (mut i32) (i32.const -1809371455))
(func $function_2622337635 (export "function_2622337635") (param i32)
    (local f32 i32)
    (local $temp i32)
    (f32.const 3.121153817074514e-36)
    local.set 1
    i32.const 9
    loop $b_loop_4023715362 (param i32)
        (f64.const 5.895658073612452e+22)
        global.set $global_264129130
        local.get 0
        i32.popcnt
        i32.ctz
        i32.clz
        f64.convert_i32_u
        f64.floor
        (f64.const 2.2979522329186485e+258)
        f64.gt
        br_if 1
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_4023715362
        drop
    end
    (i32.const -973077)
    local.tee 2
    br_if 0
)
(func $function_3565538445 (export "function_3565538445")
    (local f32 i32)
    (local $temp i32)
    local.get 0
    (f32.const -12427628544.0)
    f32.copysign
    i32.trunc_f32_s
    i32.eqz
    i32.ctz
    f64.convert_i32_s
    f64.ceil
    (i32.const 63)
    global.set $global_4256370909
    f64.nearest
    i32.trunc_f64_s
    local.set 1
)
(func $run (export "run") (result f32)
    (local f32)
    (local $temp i32)
    (f64.const 0.0)
    i64.reinterpret_f64
    global.set $global_3604861172
    (i32.const 52253280)
    call $function_2622337635
    (f64.const 4.675175548391209e+51)
    f64.floor
    f64.ceil
    f64.trunc
    i64.reinterpret_f64
    (f64.const 1.646784792171002e-230)
    nop
    block
        (i32.const 76722123)
        f32.reinterpret_i32
        local.set 0
        nop
        (i64.const 9)
        nop
        f32.convert_i64_u
        f32.ceil
        (f64.const 1.1863324938781076e-223)
        call $function_3565538445
        i64.reinterpret_f64
        i64.popcnt
        global.set $global_3604861172
        i64.trunc_f32_s
        global.get $global_3604861172
        i64.le_u
        br_if 0
    end

    i64.reinterpret_f64
    i64.div_s
    f32.convert_i64_u
)

)