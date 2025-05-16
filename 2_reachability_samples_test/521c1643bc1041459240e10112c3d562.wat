(module
(type $sig_function_1632425853 (func))
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3728502205 (mut f32) (f32.const -9.102331199799427e+18))
(func $function_1632425853 (export "function_1632425853")
    (local i32)
    (local $temp i32)
    (f64.const 9.122584477837676e-89)
    (i64.const -871837)
    i64.eqz
    i32.extend16_s
    local.set 0
    f64.floor
    i64.trunc_f64_s
    i64.extend32_s
    f32.convert_i64_s
    nop
    i64.trunc_f32_u
    drop
)
(func $run (export "run")
    (local i64)
    (local $temp i32)
    ;;FLAG_0
    (f32.const 119742.0703125)
    global.set $global_3728502205
    (i64.const 345369)
    local.tee 0
    i64.ctz
    call $function_1632425853
    i64.clz
    f64.convert_i64_u
    f64.ceil
    i32.trunc_f64_s
    if
        ;;FLAG_1
        local.get 0
        (f32.const 1.1335034241655062e+25)
        f32.abs
        f32.sqrt
        i32.reinterpret_f32
        nop
        f32.convert_i32_u
        f32.floor
        nop
        i32.reinterpret_f32
        i64.extend_i32_u
        i64.or
        i64.eqz
        i32.extend16_s
        (br_table 0 1)
        ;;FLAG_2
    else
        ;;FLAG_3
        (f32.const -3.404305459753232e-07)
        i32.trunc_f32_s
        call $function_1632425853
        call $function_1632425853
        f64.convert_i32_u
        drop
        return
        (i32.const -196999078)
        i32.extend16_s
        (i32.const -21883395)
        i32.sub
        (br_table 0 1)
        ;;FLAG_4
    end

)

)