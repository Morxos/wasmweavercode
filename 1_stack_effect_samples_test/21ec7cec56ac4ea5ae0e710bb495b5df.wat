(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i64 i32)
    (local $temp i32)
    local.get 0
    i64.ctz
    i32.wrap_i64
    local.tee 1
    f32.convert_i32_s
    nop
    (f32.const 1.6159937758817632e-17)
    f32.max
    i64.trunc_f32_u
    i64.eqz
    ;;INSPECT
    f32.convert_i32_s
    i64.trunc_f32_u
    f64.reinterpret_i64
    f64.abs
    i64.reinterpret_f64
    f64.convert_i64_s
    f64.ceil
    f64.nearest
    f32.demote_f64
    i64.trunc_f32_s
    f64.convert_i64_s
    i64.trunc_f64_s
    f64.reinterpret_i64
    f64.nearest
    f64.sqrt
    i64.trunc_f64_s
    f64.convert_i64_s
    i64.trunc_f64_u
    i64.eqz
    f32.reinterpret_i32
    i32.trunc_f32_u
    f64.convert_i32_u
    f64.abs
    i64.trunc_f64_u
    f64.reinterpret_i64
    f64.nearest
    f64.sqrt
    i64.trunc_f64_u
    f64.convert_i64_s
    i64.trunc_f64_u
    i64.popcnt
    drop
)

)