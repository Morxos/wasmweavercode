(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2443663920 f64 (f64.const 2.2794806994126418e+18))
(func $run (export "run")
    (local i32 f32)
    (local $temp i32)
    ;;FLAG_0
    (f32.const -4.314522342972631e-33)
    f32.nearest
    f64.promote_f32
    (f32.const -6.675510277109881e-34)
    local.get 0
    global.get $global_2443663920
    f64.abs
    (i64.const 196)
    global.get $global_2443663920
    i64.trunc_f64_s
    i64.div_s
    f64.reinterpret_i64
    f64.nearest
    f64.le
    i32.shr_s
    (f32.const 5.858103959137485e-24)
    i32.trunc_f32_s
    i32.shr_s
    local.set 0
    f32.trunc
    f32.sqrt
    local.set 1
    i32.trunc_f64_u
    (br_table 0)
    ;;FLAG_1
)

)