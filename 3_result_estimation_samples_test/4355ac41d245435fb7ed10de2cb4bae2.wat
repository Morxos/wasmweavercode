(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(global $global_383503380 (mut i64) (i64.const -2606348050054767662))
(global $global_2537140091 (mut f32) (f32.const -8.524348173647348e+18))
(func $run (export "run") (result i64)
    (local f32 i64 i32)
    (local $temp i32)
    (i64.const 76)
    f32.convert_i64_s
    f32.neg
    i32.trunc_f32_s
    i32.ctz
    global.get $global_383503380
    (f32.const 4.227184500039074e-26)
    local.set 0
    block (param i64) (result f32)
        f32.convert_i64_s
        global.get $global_383503380
        i64.extend32_s
        local.set 1
        local.set 0
        global.get $global_383503380
        i32.wrap_i64
        local.tee 2
        i32.extend8_s
        i32.popcnt
        local.set 2
        (i64.const 592418)
        i64.clz
        f64.convert_i64_u
        f64.floor
        drop
        local.get 0
    end

    f32.ceil
    global.set $global_2537140091
    block (param i32) (result f32)
        i32.eqz
        f64.convert_i32_u
        f64.sqrt
        i32.trunc_f64_u
        f32.convert_i32_s
    end

    f32.neg
    drop
    nop
    nop
    (i64.const -25535)
)

)