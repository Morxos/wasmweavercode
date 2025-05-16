(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i32 i32 f32)
    (local $temp i32)
    local.get 0
    i64.extend_i32_u
    i64.extend32_s
    i64.ctz
    i64.extend32_s
    f64.convert_i64_u
    i32.trunc_f64_u
    local.tee 1
    f32.convert_i32_s
    i64.trunc_f32_u
    f64.convert_i64_s
    f64.sqrt
    i64.trunc_f64_u
    f64.reinterpret_i64
    f64.nearest
    f64.neg
    f64.abs
    ;;INSPECT
    i64.reinterpret_f64
    i64.clz
    i32.wrap_i64
    i32.extend8_s
    f32.convert_i32_s
    (f32.const 5211322056704.0)
    f32.max
    local.tee 2
    f64.promote_f32
    f64.floor
    f64.nearest
    drop
)

)