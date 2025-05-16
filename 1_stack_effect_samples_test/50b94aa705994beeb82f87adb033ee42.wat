(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i32 f32)
    (local $temp i32)
    local.get 0
    f64.convert_i32_u
    ;;INSPECT
    i64.reinterpret_f64
    i64.ctz
    i64.extend8_s
    i32.wrap_i64
    f32.convert_i32_u
    i32.reinterpret_f32
    f32.convert_i32_s
    local.tee 1
    i32.reinterpret_f32
    f32.convert_i32_u
    i32.trunc_f32_u
    f32.convert_i32_u
    f32.sqrt
    f32.trunc
    i32.trunc_f32_u
    i32.extend16_s
    i32.eqz
    i32.extend8_s
    f32.reinterpret_i32
    i32.reinterpret_f32
    i32.extend8_s
    f32.convert_i32_u
    i32.reinterpret_f32
    i32.eqz
    i32.clz
    i64.extend_i32_u
    i32.wrap_i64
    i32.extend8_s
    i32.clz
    f32.convert_i32_s
    i32.reinterpret_f32
    i32.clz
    f32.reinterpret_i32
    drop
)

)