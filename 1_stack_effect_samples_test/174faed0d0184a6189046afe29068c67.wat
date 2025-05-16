(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_773629446 (mut f64) (f64.const 9.389257070934221e+17))
(func $run (export "run")
    (local f64)
    (local $temp i32)
    local.get 0
    f64.sqrt
    i64.trunc_f64_u
    i64.ctz
    i64.eqz
    (f32.const 8.51276616533057e+22)
    f64.promote_f32
    f64.sqrt
    f64.neg
    global.set $global_773629446
    i32.extend16_s
    i32.extend16_s
    i64.extend_i32_s
    i64.eqz
    f32.convert_i32_s
    i32.trunc_f32_u
    i32.extend8_s
    i64.extend_i32_s
    i64.ctz
    i64.extend32_s
    f64.convert_i64_s
    i32.trunc_f64_u
    ;;INSPECT
    i32.eqz
    f64.convert_i32_s
    i64.reinterpret_f64
    nop
    f32.convert_i64_s
    f64.promote_f32
    f64.floor
    global.set $global_773629446
)

)