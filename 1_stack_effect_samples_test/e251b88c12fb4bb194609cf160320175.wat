(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i64 f32)
    (local $temp i32)
    local.get 0
    i64.popcnt
    i64.extend32_s
    ;;INSPECT
    i64.extend32_s
    f32.convert_i64_u
    f32.floor
    f32.trunc
    i32.reinterpret_f32
    i32.popcnt
    i32.clz
    i64.extend_i32_s
    f32.convert_i64_s
    f32.ceil
    i32.reinterpret_f32
    f32.convert_i32_s
    local.tee 1
    nop
    i32.trunc_f32_u
    f32.convert_i32_u
    i32.trunc_f32_u
    i32.clz
    f32.convert_i32_u
    f32.trunc
    i32.trunc_f32_u
    f32.reinterpret_i32
    i32.reinterpret_f32
    (f32.const 1.929795530009266e-34)
    i32.reinterpret_f32
    i32.div_s
    i32.clz
    f32.reinterpret_i32
    i32.reinterpret_f32
    i32.clz
    f32.reinterpret_i32
    drop
)

)