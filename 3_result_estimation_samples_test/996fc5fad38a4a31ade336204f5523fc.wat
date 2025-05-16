(module
(type $sig_function_847976843 (func (param f32)))
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_448634435 (mut i32) (i32.const -956601975))
(global $global_3477088311 (mut f32) (f32.const 7.942947865356141e+18))
(global $global_4077605550 (mut i64) (i64.const -2558654114206189243))
(func $function_847976843 (export "function_847976843") (param f32)
    (local f64 i64)
    (local $temp i32)
    (f32.const 1.4510940192502542e-11)
    (f64.const 1.7326236891103328e+53)
    (f64.const 4.824536222145297e-69)
    f64.gt
    if (param f32) (result f32)
        f32.sqrt
        f64.promote_f32
        local.get 0
        drop
        i32.trunc_f64_s
        drop
        (f32.const 8.24084889110548e-18)
    else
        global.set $global_3477088311
        nop
        (f64.const 3.822396491144907e-37)
        local.tee 1
        i64.trunc_f64_s
        f32.convert_i64_s
        nop
        global.get $global_448634435
        f32.convert_i32_s
        f32.eq
        f32.convert_i32_s
    end

    i32.trunc_f32_s
    i64.extend_i32_s
    f64.convert_i64_u
    i64.reinterpret_f64
    f64.convert_i64_s
    f64.nearest
    i64.trunc_f64_u
    i32.const 9
    loop $b_loop_4086586775 (param i32)
        (i64.const 229684)
        f32.convert_i64_u
        i64.trunc_f32_u
        local.tee 2
        f64.convert_i64_s
        i64.reinterpret_f64
        i64.eqz
        i32.clz
        f32.reinterpret_i32
        f32.nearest
        f32.sqrt
        i64.trunc_f32_s
        f32.convert_i64_s
        i32.trunc_f32_s
        f32.convert_i32_u
        drop
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_4086586775
        drop
    end
    global.set $global_4077605550
    br 0
)
(func $run (export "run") (result i32)
    (local i32)
    (local $temp i32)
    (i32.const -804666123)
    local.set 0
    (i64.const 404518601)
    i32.wrap_i64
    global.set $global_448634435
    block
        local.get 0
        f32.convert_i32_s
        f32.ceil
        f32.floor
        call $function_847976843
        br 0
    end

    (i32.const -18074)
)

)