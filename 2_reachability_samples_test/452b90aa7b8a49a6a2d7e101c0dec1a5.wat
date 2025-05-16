(module
(type $sig_function_3067646219 (func (param f32) (result i64)))
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_141038322 i64 (i64.const 4454419876935854420))
(func $function_3067646219 (export "function_3067646219") (param f32) (result i64)
    (local i64 i32)
    (local $temp i32)
    ;;FLAG_0
    (f32.const 2.2610481023801093e-31)
    i64.trunc_f32_s
    local.set 1
    (i32.const 2)
    local.set 2
    global.get $global_141038322
)
(func $run (export "run")
    (local i64)
    (local $temp i32)
    ;;FLAG_1
    (i64.const 9192)
    (f64.const 0.0)
    i64.trunc_f64_s
    i64.rotl
    (f32.const -9.666390578620354e+32)
    call $function_3067646219
    local.tee 0
    i64.eq
    (i32.const 1064214829)
    i32.lt_u
    (br_table 0)
    ;;FLAG_2
    (i64.const 95258)
    i64.eqz
    (br_table 0)
    ;;FLAG_3
    return
)

)