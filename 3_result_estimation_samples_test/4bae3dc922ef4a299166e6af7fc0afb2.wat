(module
(type $sig_function_2111723363 (func (param f32) (result i32)))
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_1422383931 (mut f32) (f32.const 4.731477260517769e+18))
(global $global_36090090 (mut i32) (i32.const 1606665815))
(func $function_2111723363 (export "function_2111723363") (param f32) (result i32)
    (local f64 i32 i32 i64)
    (local $temp i32)
    (i64.const 5463322)
    f64.reinterpret_i64
    block (param f64)
        (i64.const -2782625215253911942)
        f32.convert_i64_u
        global.set $global_1422383931
        local.get 0
        i64.trunc_f32_s
        global.get $global_1422383931
        f32.nearest
        f32.neg
        f32.abs
        global.get $global_1422383931
        global.get $global_1422383931
        f32.eq
        global.set $global_36090090
        f32.trunc
        f64.promote_f32
        local.set 1
        (f32.const -2.278116399949404e+25)
        f64.promote_f32
        (i32.const -8825)
        local.tee 2
        local.tee 3
        i32.popcnt
        i32.popcnt
        i64.extend_i32_s
        i64.clz
        f32.convert_i64_u
        nop
        i32.reinterpret_f32
        i32.extend8_s
        i64.extend_i32_s
        local.get 0
        nop
        f32.nearest
        i32.reinterpret_f32
        f64.convert_i32_s
        i64.reinterpret_f64
        i64.le_u
        i64.extend_i32_s
        nop
        local.set 4
        (f64.const 4.873404911506433e-133)
        f64.ge
        i64.extend_i32_s
        i64.extend32_s
        i64.rotr
        local.set 4
        i32.trunc_f64_s
        global.get $global_1422383931
        (i32.const -8)
        i32.extend16_s
        i32.extend8_s
        f64.convert_i32_u
        i64.reinterpret_f64
        f64.reinterpret_i64
        f64.sqrt
        i32.trunc_f64_u
        f64.convert_i32_s
        (i32.const -1716226043)
        f64.convert_i32_u
        f64.add
        i64.reinterpret_f64
        f32.convert_i64_u
        f32.eq
        i32.shl
        br_if 0
        (i64.const 7490290077026959794)
        local.set 4
        (f64.const 2.082485550923245e+253)
        drop
    end

    (i32.const 667841)
    f32.convert_i32_u
    i64.trunc_f32_s
    i64.extend16_s
    i32.wrap_i64
)
(func $run (export "run") (result i32)
    (local f32 i64)
    (local $temp i32)
    (f32.const 1.1624605668430816e+28)
    local.set 0
    (f64.const 4.59772890263977e+138)
    f64.ceil
    drop
    (f32.const 3.717091738575373e-13)
    i64.trunc_f32_s
    i64.ctz
    local.set 1
    block
        (i32.const 8358995)
        f32.convert_i32_u
        i32.trunc_f32_s
        f32.convert_i32_u
        call $function_2111723363
        br_if 0
    end

    global.get $global_1422383931
    i32.reinterpret_f32
)

)