(module
(type $sig_function_2949899209 (func (param i32) (result i32)))
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(global $global_2636673587 (mut f32) (f32.const 3.7327119590495355e+18))
(global $global_4167756265 (mut i32) (i32.const -197619428))
(global $global_2276591251 (mut f64) (f64.const 8.351543343325583e+18))
(func $function_2949899209 (export "function_2949899209") (param i32) (result i32)
    (local f32 f64)
    (local $temp i32)
    block
        (f32.const 2579351467982848.0)
        f32.neg
        f32.nearest
        local.set 1
        global.get $global_2636673587
        local.set 1
    end

    nop
    (i32.const -852989495)
    i32.eqz
    global.set $global_4167756265
    (f32.const 3714236.75)
    i64.trunc_f32_s
    i64.ctz
    f64.convert_i64_s
    f64.neg
    global.set $global_2276591251
    (f64.const 1.3506304407316664e-263)
    local.set 2
    (i64.const 1087019)
    nop
    i32.wrap_i64
    (i64.const 778)
    (i64.const -2068)
    i64.le_u
    i32.shr_s
    i32.popcnt
)
(func $run (export "run") (result i64)
    (local i64 f32 i32 funcref)
    (local $temp i32)
    block
        (f64.const 1.7789148930222873e-282)
        block
            (f64.const 1.3219592691354242e-153)
            i32.trunc_f64_u
            i64.extend_i32_u
            i64.extend16_s
            local.set 0
        end

        f64.trunc
        f64.neg
        drop
        global.get $global_2636673587
        local.set 1
    end

    (i32.const 762)
    f32.convert_i32_u
    f32.floor
    f32.sqrt
    local.set 1
    (f32.const -2.0143858363548886e+25)
    f64.promote_f32
    f64.neg
    (i32.const -5423872)
    call $function_2949899209
    i32.clz
    f32.convert_i32_u
    (i32.const -5567)
    f64.convert_i32_u
    (f64.const 2.6193643960180235e-52)
    nop
    i32.trunc_f64_u
    local.set 2
    nop
    drop
    local.set 1
    f64.floor
    f32.demote_f64
    global.set $global_2636673587
    global.get $global_2636673587
    ref.func $function_2949899209
    local.set 3
    f32.nearest
    f32.abs
    global.set $global_2636673587
    local.get 0
)

)