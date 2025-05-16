(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f32 i32)
    (local $temp i32)
    local.get 0
    f32.ceil
    f32.abs
    i32.reinterpret_f32
    i32.extend8_s
    f32.convert_i32_s
    i64.trunc_f32_s
    f64.convert_i64_s
    ;;INSPECT
    drop
    local.get 0
    (f32.const -0.04296378791332245)
    f32.trunc
    f32.eq
    i64.extend_i32_s
    i64.eqz
    f64.convert_i32_s
    f32.demote_f64
    i64.trunc_f32_u
    f64.convert_i64_s
    f64.nearest
    f64.neg
    f64.neg
    i64.trunc_f64_u
    i64.extend32_s
    i64.extend32_s
    i64.eqz
    i64.extend_i32_s
    i64.popcnt
    i64.eqz
    f32.reinterpret_i32
    i64.trunc_f32_u
    i64.eqz
    local.set 1
)

)