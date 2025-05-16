(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f32 f32 i32)
    (local $temp i32)
    local.get 0
    f32.ceil
    f32.ceil
    f32.ceil
    f32.neg
    i32.reinterpret_f32
    i32.eqz
    local.get 0
    f32.ceil
    i64.trunc_f32_u
    local.get 0
    i64.trunc_f32_u
    i64.popcnt
    f32.convert_i64_u
    local.tee 1
    i64.trunc_f32_u
    i64.popcnt
    i64.extend32_s
    i64.eqz
    f32.convert_i32_u
    i64.trunc_f32_u
    ;;INSPECT
    i64.extend32_s
    i64.sub
    f64.convert_i64_s
    f64.neg
    f64.neg
    f64.trunc
    f64.abs
    i64.reinterpret_f64
    f32.convert_i64_u
    i32.reinterpret_f32
    i32.or
    local.tee 2
    drop
)

)