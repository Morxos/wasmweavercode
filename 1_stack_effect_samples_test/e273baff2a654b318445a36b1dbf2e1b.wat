(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_186737819 (mut f64) (f64.const -4.3335684419522683e+18))
(func $run (export "run")
    (local $temp i32)
    (f32.const 1.3057507549166236e-12)
    i64.trunc_f32_u
    i64.extend32_s
    i64.extend32_s
    f64.convert_i64_s
    f32.demote_f64
    f32.neg
    i64.trunc_f32_u
    f64.convert_i64_u
    f64.trunc
    f64.neg
    i64.reinterpret_f64
    (i32.const 8)
    i32.eqz
    i32.eqz
    i32.clz
    i32.clz
    f64.convert_i32_u
    drop
    i64.clz
    f32.convert_i64_u
    i32.trunc_f32_u
    i32.clz
    i32.extend8_s
    i32.extend8_s
    i64.extend_i32_s
    nop
    i64.eqz
    f64.convert_i32_u
    f64.sqrt
    f64.neg
    f64.sqrt
    ;;INSPECT
    f64.sqrt
    f64.sqrt
    f64.trunc
    global.set $global_186737819
)

)