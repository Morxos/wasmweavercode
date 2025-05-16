(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f32 i64)
    (local $temp i32)
    ;;INSPECT
    local.get 0
    i64.trunc_f32_u
    i64.ctz
    i64.eqz
    f32.reinterpret_i32
    f32.ceil
    i32.reinterpret_f32
    f32.reinterpret_i32
    i32.reinterpret_f32
    f32.reinterpret_i32
    f32.neg
    i32.trunc_f32_u
    f32.convert_i32_u
    i32.reinterpret_f32
    i32.popcnt
    f32.reinterpret_i32
    local.get 0
    f32.neg
    f32.copysign
    f32.abs
    f32.neg
    f32.abs
    i64.trunc_f32_u
    i64.popcnt
    i64.popcnt
    local.get 0
    i32.trunc_f32_s
    local.get 0
    i64.trunc_f32_u
    i64.ctz
    i64.popcnt
    local.set 1
    i64.extend_i32_s
    i64.sub
    drop
)

)