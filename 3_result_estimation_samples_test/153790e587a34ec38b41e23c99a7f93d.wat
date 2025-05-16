(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(global $global_3795243250 (mut f32) (f32.const 1.8475227197304996e+18))
(global $global_2997645397 (mut f64) (f64.const -9.175710637051711e+18))
(func $run (export "run") (result i64)
    (local f32 i32 i32 f64)
    (local $temp i32)
    (f32.const -2.144226933866508e+25)
    f32.ceil
    local.get 0
    f32.min
    (i64.const 4079461)
    i64.popcnt
    i64.popcnt
    drop
    global.set $global_3795243250
    block
        (i32.const -82095232)
        i32.clz
        f32.reinterpret_i32
        global.set $global_3795243250
        nop
        br 0
        nop
    end

    (i32.const -166022844)
    i32.extend8_s
    local.set 1
    (f32.const -2.5426433331519973e+20)
    global.set $global_3795243250
    (f64.const 1.5951928421938157e-11)
    f64.sqrt
    f64.sqrt
    i64.trunc_f64_s
    i64.extend16_s
    f64.convert_i64_u
    (i32.const 2)
    local.tee 2
    f32.reinterpret_i32
    f64.promote_f32
    f64.gt
    i64.extend_i32_s
    global.get $global_3795243250
    f64.promote_f32
    (i32.const 6100949)
    f32.reinterpret_i32
    block
        (i32.const 1083471556)
        f32.convert_i32_u
        nop
        i32.reinterpret_f32
        (f64.const 2.6818899577260185e-238)
        local.tee 3
        f64.nearest
        i32.trunc_f64_u
        i32.rotl
        f64.convert_i32_s
        global.set $global_2997645397
        (f64.const 1.5463761777097077e+170)
        drop
    end

    i64.trunc_f32_u
    f64.convert_i64_u
    f64.ge
    br_if 0
)

)