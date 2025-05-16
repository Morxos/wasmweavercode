(module
(type $sig_function_1465207561 (func (param f64)))
(type $sig_function_3220623258 (func))
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_1077573903 (mut f64) (f64.const 9.055834057423268e+18))
(global $global_1825853265 (mut i32) (i32.const 1394709042))
(func $function_1465207561 (export "function_1465207561") (param f64)
    (local i64)
    (local $temp i32)
    (i64.const 8787)
    nop
    local.set 1
    (f32.const 9.227347029137247e-24)
    drop
)
(func $function_3220623258 (export "function_3220623258")
    (local f64)
    (local $temp i32)
    (i32.const -4)
    (f64.const 1.2518475896096483e-09)
    global.set $global_1077573903
    i32.ctz
    f64.convert_i32_u
    local.set 0
    nop
)
(func $run (export "run") (result i32)
    (local f32 f64 i64 i64 f32)
    (local $temp i32)
    (f32.const -7.123690976286291e+19)
    (f32.const 5253182976.0)
    f32.min
    f32.ceil
    local.set 0
    local.get 0
    local.set 0
    (i64.const 535260)
    (f64.const 4.3344651525138543e-72)
    global.get $global_1077573903
    f64.eq
    i32.clz
    global.get $global_1077573903
    i64.reinterpret_f64
    i64.eqz
    i32.shl
    (f64.const 7.727153567258485e-258)
    f64.nearest
    global.set $global_1077573903
    f32.convert_i32_u
    f64.promote_f32
    f64.floor
    f64.trunc
    local.set 1
    f32.convert_i64_s
    block
        (i32.const 0)
        i64.extend_i32_u
        local.set 2
        (f64.const 4.584962147508635e-18)
        i32.trunc_f64_s
        i32.clz
        if
            global.get $global_1077573903
            call $function_1465207561
            (f32.const 2.4794997259265476e-14)
            f32.trunc
            local.set 0
            br 0
            local.get 0
            i64.trunc_f32_s
            f32.convert_i64_u
            call $function_3220623258
            f64.promote_f32
            f64.neg
            f64.nearest
            (i32.const -144178140)
            call $function_3220623258
            drop
            i64.reinterpret_f64
            block (param i64)
                f64.convert_i64_s
                local.set 1
                local.get 0
                i32.reinterpret_f32
                i32.clz
                global.set $global_1825853265
            end

            br 0
        else
            local.get 0
            local.set 0
            nop
            (f64.const 32320058864.28431)
            f64.nearest
            i64.reinterpret_f64
            i64.ctz
            local.tee 3
            local.set 2
        end

    end

    i32.reinterpret_f32
    f32.convert_i32_u
    local.tee 4
    f32.nearest
    i32.trunc_f32_s
)

)