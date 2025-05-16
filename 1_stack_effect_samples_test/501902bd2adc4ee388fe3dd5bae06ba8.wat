(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i64)
    (local $temp i32)
    local.get 0
    f32.convert_i64_u
    i32.reinterpret_f32
    f32.reinterpret_i32
    i64.trunc_f32_u
    f64.convert_i64_u
    i64.reinterpret_f64
    i64.popcnt
    f32.convert_i64_u
    ;;INSPECT
    f32.sqrt
    f32.sqrt
    f32.ceil
    f32.trunc
    i32.trunc_f32_u
    f32.reinterpret_i32
    i32.reinterpret_f32
    f64.convert_i32_u
    f64.trunc
    f64.sqrt
    f64.abs
    f64.nearest
    f32.demote_f64
    f32.abs
    i32.reinterpret_f32
    f64.convert_i32_s
    f64.sqrt
    f64.sqrt
    f64.sqrt
    f64.sqrt
    f64.sqrt
    f64.sqrt
    i64.trunc_f64_s
    f32.convert_i64_u
    i64.trunc_f32_u
    drop
)

)