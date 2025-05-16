(module
(type $sig_function_2493826733 (func (param i32 f32)))
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1642842176 (mut f32) (f32.const 5.4871116789045e+18))
(func $function_2493826733 (export "function_2493826733") (param i32 f32)
    (local f32)
    (local $temp i32)
    ;;FLAG_0
    nop
    global.get $global_1642842176
    f64.promote_f32
    i32.trunc_f64_u
    i32.ctz
    block
        (f32.const -1.6875919698680207e+28)
        local.tee 2
        global.get $global_1642842176
        f32.le
        drop
        br 0
    end

    ;;FLAG_1
    f64.convert_i32_s
    f64.floor
    drop
)
(func $run (export "run")
    (local f32)
    (local $temp i32)
    ;;FLAG_2
    block
        ;;FLAG_4
        (i64.const 39233435)
        f64.convert_i64_u
        nop
        f64.abs
        f32.demote_f64
        global.set $global_1642842176
    end

    ;;FLAG_3
    (i32.const 582832601)
    global.get $global_1642842176
    local.tee 0
    global.get $global_1642842176
    f32.trunc
    f32.ne
    i32.shr_s
    i32.clz
    global.get $global_1642842176
    call $function_2493826733
)

)