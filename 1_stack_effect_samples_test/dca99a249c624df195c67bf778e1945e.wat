(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f32 i32)
    (local $temp i32)
    local.get 0
    f32.ceil
    i32.trunc_f32_s
    f32.convert_i32_u
    local.get 0
    f32.abs
    f32.copysign
    i64.trunc_f32_u
    i64.extend32_s
    i64.eqz
    f32.convert_i32_s
    i32.reinterpret_f32
    local.tee 1
    f32.reinterpret_i32
    (i32.const 946369970)
    i32.clz
    i32.clz
    ;;INSPECT
    i32.clz
    f32.convert_i32_u
    f32.lt
    f32.reinterpret_i32
    i32.trunc_f32_u
    f32.reinterpret_i32
    f64.promote_f32
    i64.trunc_f64_s
    i64.extend8_s
    i64.clz
    drop
)

)