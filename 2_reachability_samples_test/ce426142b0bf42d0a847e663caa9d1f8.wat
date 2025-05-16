(module
(type $sig_function_1082392275 (func))
(type $sig_function_676747285 (func))
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1130600656 (mut i32) (i32.const -2046411012))
(global $global_1870460180 (mut i64) (i64.const 5577372848858225863))
(global $global_2872790620 (mut f32) (f32.const -8.34477428533153e+18))
(func $function_1082392275 (export "function_1082392275")
    (local i64 i32)
    (local $temp i32)
    ;;FLAG_0
    block
        ;;FLAG_2
        (f64.const 1.745000346888338e-197)
        f64.neg
        i64.trunc_f64_s
        local.set 0
        nop
    end

    (i64.const -392)
    i64.eqz
    local.set 1
    (f32.const -0.05044989287853241)
    i32.reinterpret_f32
    (br_table 0)
    ;;FLAG_1
)
(func $function_676747285 (export "function_676747285")
    (local i64 i32)
    (local $temp i32)
    ;;FLAG_3
    block
        ;;FLAG_4
        local.get 0
        (f32.const 2.2840580736896694e-34)
        i32.trunc_f32_u
        local.set 1
        f32.convert_i64_u
        i32.trunc_f32_u
        global.set $global_1130600656
        local.get 0
        drop
    end

    local.get 0
    global.set $global_1870460180
    (i64.const -7273532189598879372)
    i64.ctz
    i64.extend16_s
    f64.reinterpret_i64
    call $function_1082392275
    f32.demote_f64
    nop
    global.set $global_2872790620
)
(func $run (export "run")
    (local $temp i32)
    (i64.const -32035531)
    i64.eqz
    i64.extend_i32_u
    f32.convert_i64_u
    f64.promote_f32
    f64.floor
    call $function_676747285
    (f64.const 6.924846567628554e-246)
    f64.sub
    drop
    call $function_1082392275
)

)