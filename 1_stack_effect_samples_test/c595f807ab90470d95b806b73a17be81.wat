(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i32 f32 f64)
    (local $temp i32)
    local.get 0
    f32.convert_i32_s
    local.tee 1
    f32.trunc
    f32.abs
    i64.trunc_f32_s
    f64.convert_i64_s
    f64.sqrt
    f64.trunc
    f32.demote_f64
    f32.abs
    i64.trunc_f32_u
    i32.wrap_i64
    f32.convert_i32_s
    i64.trunc_f32_u
    i64.eqz
    f32.reinterpret_i32
    i32.reinterpret_f32
    i32.popcnt
    f64.convert_i32_u
    i64.trunc_f64_s
    i64.extend32_s
    f64.reinterpret_i64
    f64.sqrt
    i64.trunc_f64_u
    i64.ctz
    i64.popcnt
    ;;INSPECT
    f32.convert_i64_u
    i64.trunc_f32_u
    local.get 0
    i32.extend16_s
    f64.convert_i32_u
    f32.demote_f64
    drop
    i64.extend32_s
    f64.reinterpret_i64
    local.tee 2
    f64.sqrt
    f64.nearest
    f64.sqrt
    local.set 2
)

)