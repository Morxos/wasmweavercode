(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i32 i32)
    (local $temp i32)
    local.get 0
    i32.ctz
    i32.extend8_s
    f32.convert_i32_s
    i32.reinterpret_f32
    local.tee 1
    f32.convert_i32_s
    local.get 0
    f32.convert_i32_u
    f32.lt
    f32.reinterpret_i32
    i32.reinterpret_f32
    f32.reinterpret_i32
    f32.abs
    i32.trunc_f32_u
    f32.reinterpret_i32
    i32.reinterpret_f32
    f32.reinterpret_i32
    local.get 0
    i32.clz
    (f32.const 2.1809708986714194e-12)
    i32.reinterpret_f32
    i32.div_s
    i64.extend_i32_u
    i64.clz
    i64.eqz
    i64.extend_i32_u
    i32.wrap_i64
    i32.clz
    ;;INSPECT
    i32.clz
    i32.clz
    i32.clz
    i32.clz
    i64.extend_i32_u
    i64.popcnt
    i32.wrap_i64
    f32.convert_i32_u
    f32.ne
    drop
)

)