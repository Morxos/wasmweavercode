(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f32 f64)
    (local $temp i32)
    local.get 0
    i32.trunc_f32_s
    f32.reinterpret_i32
    i64.trunc_f32_u
    i64.ctz
    local.get 0
    i64.trunc_f32_s
    i64.gt_s
    f32.convert_i32_u
    i32.reinterpret_f32
    f32.convert_i32_s
    i32.reinterpret_f32
    i32.clz
    i32.extend8_s
    i64.extend_i32_u
    i64.eqz
    f32.reinterpret_i32
    ;;INSPECT
    i32.trunc_f32_u
    local.get 0
    (f32.const 6.643936168356083e+36)
    f32.sub
    f32.nearest
    (f32.const 114311762542592.0)
    i64.trunc_f32_u
    drop
    drop
    i32.clz
    f32.convert_i32_u
    i64.trunc_f32_s
    f64.convert_i64_s
    local.set 1
)

)