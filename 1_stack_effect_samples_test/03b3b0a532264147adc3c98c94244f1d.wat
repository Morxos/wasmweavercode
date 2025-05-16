(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2956208535 (mut f64) (f64.const 8.765804844458279e+18))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    local.get 0
    f32.ceil
    f32.ceil
    (f32.const 6.468020926621111e-19)
    f32.trunc
    f32.neg
    f32.min
    f32.neg
    f32.floor
    f32.neg
    i64.trunc_f32_u
    i64.eqz
    i32.extend16_s
    i64.extend_i32_s
    i64.ctz
    i64.popcnt
    i64.ctz
    i64.eqz
    f32.reinterpret_i32
    i64.trunc_f32_u
    i64.ctz
    i64.eqz
    i64.extend_i32_s
    i64.extend8_s
    f64.reinterpret_i64
    ;;INSPECT
    global.set $global_2956208535
)

)