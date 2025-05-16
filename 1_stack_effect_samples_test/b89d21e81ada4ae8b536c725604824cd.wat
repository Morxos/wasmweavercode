(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    local.get 0
    i32.eqz
    i32.clz
    i32.ctz
    i64.extend_i32_s
    f64.reinterpret_i64
    i64.trunc_f64_u
    i64.popcnt
    i64.clz
    i64.eqz
    i64.extend_i32_s
    f64.convert_i64_u
    f32.demote_f64
    local.get 0
    f32.convert_i32_s
    f32.min
    f32.trunc
    f32.nearest
    f32.neg
    i64.trunc_f32_u
    f64.convert_i64_s
    i64.trunc_f64_s
    f64.reinterpret_i64
    f64.sqrt
    i32.trunc_f64_u
    i32.eqz
    i32.extend8_s
    f64.convert_i32_s
    f64.abs
    f64.sqrt
    i64.trunc_f64_u
    i64.extend16_s
    f64.reinterpret_i64
    i32.trunc_f64_u
    i32.ctz
    ;;INSPECT
    drop
)

)