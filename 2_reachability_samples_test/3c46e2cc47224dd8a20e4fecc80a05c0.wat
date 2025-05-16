(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_468905630 f32 (f32.const 6.542521895290405e+18))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    ;;FLAG_0
    global.get $global_468905630
    i64.trunc_f32_u
    (f32.const -2.122259859270632e+25)
    i32.reinterpret_f32
    f32.reinterpret_i32
    (f32.const 0.0)
    f32.le
    i32.extend8_s
    f64.convert_i32_u
    i64.reinterpret_f64
    i64.eq
    nop
    i32.eqz
    block (param i32)
        ;;FLAG_3
        (f32.const 105.97914123535156)
        f32.nearest
        i32.trunc_f32_s
        local.get 0
        i32.lt_u
        i32.shr_s
        (i32.const -2355445)
        i32.shr_s
        (br_table 0 1)
        ;;FLAG_4
        br 0
    end

    ;;FLAG_1
    local.get 0
    i64.extend_i32_s
    i64.eqz
    (br_table 0)
    ;;FLAG_2
)

)