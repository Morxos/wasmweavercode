(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    ;;INSPECT
    local.get 0
    i64.trunc_f32_s
    i64.eqz
    i64.extend_i32_s
    i64.eqz
    f64.convert_i32_u
    i64.reinterpret_f64
    f64.convert_i64_s
    f64.trunc
    local.get 0
    i64.trunc_f32_u
    i64.eqz
    f64.convert_i32_u
    i64.reinterpret_f64
    f64.convert_i64_s
    f64.copysign
    i64.reinterpret_f64
    f32.convert_i64_u
    f32.sqrt
    i64.trunc_f32_u
    f64.convert_i64_u
    f64.trunc
    f64.trunc
    i64.trunc_f64_s
    f64.convert_i64_s
    f32.demote_f64
    i32.trunc_f32_s
    i32.popcnt
    f64.convert_i32_s
    f32.demote_f64
    f32.sqrt
    i64.trunc_f32_u
    i64.eqz
    i64.extend_i32_s
    f64.convert_i64_s
    drop
)

)