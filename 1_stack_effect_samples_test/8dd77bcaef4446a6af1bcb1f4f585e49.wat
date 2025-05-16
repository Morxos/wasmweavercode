(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i64 f32 i64)
    (local $temp i32)
    local.get 0
    i64.clz
    i32.wrap_i64
    i64.extend_i32_s
    i64.eqz
    (f32.const -7.571240394979516e-18)
    local.tee 1
    f32.abs
    i32.reinterpret_f32
    i32.rem_s
    f32.reinterpret_i32
    f32.ceil
    i32.trunc_f32_s
    f64.convert_i32_s
    i64.reinterpret_f64
    local.tee 2
    i64.ctz
    ;;INSPECT
    i64.popcnt
    f32.convert_i64_u
    f32.nearest
    i64.trunc_f32_u
    f64.convert_i64_s
    f64.sqrt
    f64.abs
    f64.trunc
    i64.reinterpret_f64
    f32.convert_i64_s
    f32.neg
    drop
)

)