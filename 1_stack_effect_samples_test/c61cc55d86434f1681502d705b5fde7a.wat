(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f32 f64)
    (local $temp i32)
    local.get 0
    local.get 0
    f32.ceil
    f32.min
    f32.ceil
    i32.trunc_f32_u
    f32.convert_i32_s
    f32.neg
    i64.trunc_f32_u
    i64.eqz
    f32.convert_i32_s
    i64.trunc_f32_u
    f64.convert_i64_s
    i32.trunc_f64_u
    ;;INSPECT
    i32.clz
    f32.convert_i32_u
    i32.reinterpret_f32
    i32.ctz
    f32.reinterpret_i32
    f32.nearest
    i32.reinterpret_f32
    i64.extend_i32_s
    i64.clz
    i64.popcnt
    f64.convert_i64_u
    f64.sqrt
    nop
    drop
    (f32.const 2.5816710648902677e-25)
    i64.trunc_f32_u
    i64.clz
    i64.extend32_s
    i64.extend32_s
    i64.extend32_s
    f64.convert_i64_s
    local.set 1
)

)