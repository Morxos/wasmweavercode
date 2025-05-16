(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i32 i32 i64)
    (local $temp i32)
    local.get 0
    local.tee 1
    i32.popcnt
    i64.extend_i32_s
    f64.reinterpret_i64
    f32.demote_f64
    i64.trunc_f32_u
    i32.wrap_i64
    f32.convert_i32_s
    f32.ceil
    f32.abs
    f32.abs
    f32.abs
    ;;INSPECT
    i32.trunc_f32_s
    f32.convert_i32_u
    i32.reinterpret_f32
    drop
    local.get 0
    i32.popcnt
    f32.convert_i32_u
    f32.abs
    i64.trunc_f32_u
    local.tee 2
    f64.convert_i64_s
    i64.reinterpret_f64
    i64.popcnt
    f64.convert_i64_s
    f64.nearest
    f64.abs
    i64.reinterpret_f64
    i64.extend8_s
    drop
)

)