(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f32 f32 f64)
    (local $temp i32)
    local.get 0
    f32.sqrt
    i32.trunc_f32_s
    i64.extend_i32_s
    i64.extend32_s
    i64.clz
    i64.ctz
    i32.wrap_i64
    local.get 0
    f32.abs
    f32.abs
    f32.trunc
    i64.trunc_f32_u
    i64.clz
    nop
    f64.convert_i64_s
    i64.trunc_f64_u
    f32.convert_i64_s
    f64.promote_f32
    f64.sqrt
    drop
    i32.extend8_s
    i32.popcnt
    f32.convert_i32_s
    f32.abs
    f32.trunc
    f32.ceil
    local.tee 1
    i64.trunc_f32_s
    f64.convert_i64_s
    f64.sqrt
    i32.trunc_f64_u
    i64.extend_i32_s
    f64.reinterpret_i64
    i64.trunc_f64_u
    f64.reinterpret_i64
    ;;INSPECT
    f64.sqrt
    f64.nearest
    local.tee 2
    f64.neg
    f64.sqrt
    drop
)

)