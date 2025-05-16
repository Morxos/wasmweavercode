(module
(type $sig_function_536343720 (func))
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_1175409132 (mut i64) (i64.const -1656234728529276731))
(global $global_271693338 (mut f64) (f64.const 5.30272992845646e+18))
(global $global_55882680 (mut i32) (i32.const -1894608012))
(func $function_536343720 (export "function_536343720")
    (local f64 i32 f32 i32)
    (local $temp i32)
    i32.const 9
    loop $b_loop_663505762 (param i32)
        global.get $global_1175409132
        (f64.const 1.7623175929361607e-286)
        i64.reinterpret_f64
        i64.shl
        i64.ctz
        i32.wrap_i64
        f64.convert_i32_u
        i32.trunc_f64_u
        f32.convert_i32_u
        f32.floor
        i32.reinterpret_f32
        br_if 1
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_663505762
        drop
    end
    (i64.const -9870)
    f32.convert_i64_u
    (i64.const 96)
    i64.extend8_s
    i32.const 9
    loop $b_loop_1081354654 (param i32)
        (f64.const 1.0037791772674492e+133)
        f64.floor
        f64.trunc
        global.set $global_271693338
        global.get $global_1175409132
        (i32.const 347727776)
        i32.clz
        f64.convert_i32_s
        local.set 0
        i64.clz
        i64.popcnt
        drop
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_1081354654
        drop
    end
    f32.convert_i64_u
    (i32.const -762210099)
    local.set 1
    block
        local.get 0
        local.set 0
        (i32.const -323254)
        i32.clz
        i32.clz
        global.set $global_55882680
    end

    f32.add
    local.tee 2
    global.get $global_1175409132
    f32.convert_i64_s
    f32.eq
    br_if 0
    nop
    block
        (i32.const -63579761)
        (i32.const -5687)
        i32.shl
        global.get $global_1175409132
        f64.convert_i64_s
        local.set 0
        local.tee 3
        br_if 0
        nop
    end

    nop
)
(func $run (export "run") (result i32)
    (local f64 i32 i64)
    (local $temp i32)
    block
        (i32.const 2130953)
        i32.popcnt
        local.get 0
        i32.trunc_f64_s
        i32.shl
        call $function_536343720
        local.set 1
        nop
        global.get $global_1175409132
        global.set $global_1175409132
    end

    local.get 0
    i32.trunc_f64_s
    global.get $global_1175409132
    (i32.const 2927)
    local.set 1
    i64.ctz
    local.set 2
    return
)

)