(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f64 i32)
    (local $temp i32)
    local.get 0
    f32.demote_f64
    f32.floor
    i32.trunc_f32_s
    i32.clz
    i32.extend8_s
    f32.convert_i32_u
    i64.trunc_f32_s
    f64.convert_i64_s
    f64.nearest
    ;;INSPECT
    f64.nearest
    i32.trunc_f64_u
    i32.ctz
    f32.convert_i32_u
    f32.ceil
    f32.floor
    i32.reinterpret_f32
    local.tee 1
    f32.convert_i32_u
    i32.trunc_f32_u
    f32.convert_i32_u
    i32.reinterpret_f32
    i32.clz
    f32.reinterpret_i32
    f32.floor
    local.get 0
    i64.trunc_f64_s
    i64.clz
    i64.eqz
    nop
    i32.clz
    f32.reinterpret_i32
    f32.mul
    f32.neg
    f32.trunc
    i32.reinterpret_f32
    drop
)

)