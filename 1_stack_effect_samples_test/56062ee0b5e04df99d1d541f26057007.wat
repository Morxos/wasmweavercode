(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i64 i32)
    (local $temp i32)
    local.get 0
    i64.ctz
    i32.wrap_i64
    i32.clz
    i32.popcnt
    i32.extend16_s
    f32.convert_i32_s
    i32.reinterpret_f32
    local.tee 1
    f32.convert_i32_u
    local.get 0
    i64.extend8_s
    f64.convert_i64_s
    i64.trunc_f64_u
    i64.popcnt
    f64.convert_i64_s
    i64.trunc_f64_u
    i32.wrap_i64
    f32.convert_i32_u
    f32.lt
    f32.reinterpret_i32
    local.get 0
    i64.extend8_s
    i64.clz
    ;;INSPECT
    i64.clz
    i64.eqz
    f32.reinterpret_i32
    drop
    i32.trunc_f32_s
    f32.reinterpret_i32
    f32.trunc
    i32.reinterpret_f32
    i32.clz
    i32.clz
    i32.clz
    i32.clz
    i32.clz
    f32.reinterpret_i32
    drop
)

)