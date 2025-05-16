(module
(type $sig_function_1288288648 (func))
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1797442931 (mut f64) (f64.const -8.419513813539801e+18))
(func $function_1288288648 (export "function_1288288648")
    (local i64)
    (local $temp i32)
    ;;FLAG_0
    (i64.const -6193)
    (i64.const -577405)
    i64.add
    local.set 0
    (f32.const -5.840752144090078e-13)
    nop
    (f64.const 2.4701004013547733e-54)
    global.set $global_1797442931
    drop
    return
)
(func $run (export "run")
    (local f32 f64)
    (local $temp i32)
    ;;FLAG_1
    block
        ;;FLAG_3
        (f32.const 6346925.5)
        f32.abs
        local.tee 0
        call $function_1288288648
        (i32.const -121)
        f32.convert_i32_u
        global.get $global_1797442931
        i64.reinterpret_f64
        f64.convert_i64_u
        local.set 1
        f32.ne
        br_if 0
        ;;FLAG_4
    end

    ;;FLAG_2
    (f32.const -2.695417912562679e+32)
    f64.promote_f32
    local.set 1
    nop
    return
)

)