(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2437780079 (mut f32) (f32.const 8.922258682960413e+18))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    local.get 0
    i32.extend8_s
    ;;INSPECT
    f64.convert_i32_s
    f32.demote_f64
    i32.reinterpret_f32
    i32.ctz
    i32.extend8_s
    i64.extend_i32_s
    i64.eqz
    i64.extend_i32_s
    i64.ctz
    i64.popcnt
    i64.ctz
    i64.eqz
    i64.extend_i32_s
    f64.convert_i64_s
    f64.neg
    i64.reinterpret_f64
    i64.clz
    i64.clz
    f64.convert_i64_s
    f64.sqrt
    f64.sqrt
    f64.trunc
    f32.demote_f64
    f32.abs
    f32.ceil
    f32.trunc
    i32.reinterpret_f32
    i32.extend16_s
    f32.convert_i32_s
    i64.trunc_f32_u
    i64.extend16_s
    f64.convert_i64_s
    i64.trunc_f64_u
    f32.convert_i64_u
    i32.reinterpret_f32
    i64.extend_i32_u
    i64.eqz
    f64.convert_i32_u
    f64.sqrt
    f32.demote_f64
    global.set $global_2437780079
)

)