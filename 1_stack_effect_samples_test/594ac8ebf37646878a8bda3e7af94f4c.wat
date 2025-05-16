(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    local.get 0
    (f32.const 1.4724306890589269e-31)
    f32.copysign
    i32.reinterpret_f32
    (f32.const 0.07135599106550217)
    f32.trunc
    i32.trunc_f32_u
    i32.shr_s
    i64.extend_i32_s
    i64.popcnt
    f64.convert_i64_s
    f64.nearest
    i64.trunc_f64_s
    i64.ctz
    i64.popcnt
    i64.ctz
    f64.convert_i64_s
    f64.abs
    i32.trunc_f64_u
    i32.popcnt
    i32.popcnt
    i32.popcnt
    ;;INSPECT
    i32.extend8_s
    i32.extend16_s
    i64.extend_i32_s
    f32.convert_i64_u
    f32.abs
    f32.nearest
    i32.reinterpret_f32
    drop
)

)