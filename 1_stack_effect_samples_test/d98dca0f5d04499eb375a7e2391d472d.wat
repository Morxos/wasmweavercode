(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f64 f64)
    (local $temp i32)
    local.get 0
    f64.trunc
    f64.nearest
    f32.demote_f64
    f32.neg
    f32.trunc
    f32.abs
    f32.abs
    i64.trunc_f32_u
    i64.ctz
    local.get 0
    i64.reinterpret_f64
    i64.sub
    i64.popcnt
    i64.eqz
    i64.extend_i32_u
    f32.convert_i64_u
    i64.trunc_f32_u
    i64.extend32_s
    f64.reinterpret_i64
    f64.neg
    f64.neg
    local.tee 1
    f64.abs
    f64.nearest
    i64.reinterpret_f64
    i64.eqz
    i32.extend16_s
    f32.convert_i32_s
    f32.ceil
    f32.ceil
    f32.sqrt
    f64.promote_f32
    i32.trunc_f64_u
    ;;INSPECT
    i64.extend_i32_u
    i64.extend32_s
    i64.extend32_s
    i64.eqz
    drop
)

)