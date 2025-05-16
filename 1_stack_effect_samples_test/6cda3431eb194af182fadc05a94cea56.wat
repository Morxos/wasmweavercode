(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f64 f32 i32 i32 i32)
    (local $temp i32)
    local.get 0
    f64.neg
    i64.trunc_f64_u
    i64.eqz
    f32.reinterpret_i32
    f32.sqrt
    local.tee 1
    f32.trunc
    i32.reinterpret_f32
    local.tee 2
    i32.popcnt
    f32.convert_i32_s
    f32.trunc
    i32.reinterpret_f32
    f32.convert_i32_u
    i64.trunc_f32_u
    f64.reinterpret_i64
    f64.trunc
    f64.nearest
    i32.trunc_f64_u
    local.tee 3
    i32.popcnt
    local.tee 4
    f32.convert_i32_u
    f32.trunc
    f32.neg
    f32.abs
    i32.reinterpret_f32
    ;;INSPECT
    i32.popcnt
    nop
    i64.extend_i32_s
    f64.reinterpret_i64
    f64.sqrt
    local.set 0
)

)