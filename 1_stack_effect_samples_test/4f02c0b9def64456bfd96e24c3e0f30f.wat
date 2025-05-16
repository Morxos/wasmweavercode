(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i32 f64 i64)
    (local $temp i32)
    local.get 0
    i32.extend16_s
    i32.extend8_s
    f32.convert_i32_u
    i64.trunc_f32_u
    i64.popcnt
    i64.clz
    f64.convert_i64_s
    f64.nearest
    f64.nearest
    f64.trunc
    f64.floor
    local.tee 1
    f64.sqrt
    f64.sqrt
    f32.demote_f64
    f32.sqrt
    f32.trunc
    f32.ceil
    i32.trunc_f32_u
    local.get 0
    i32.shr_s
    i64.extend_i32_s
    i64.popcnt
    i32.wrap_i64
    i64.extend_i32_s
    ;;INSPECT
    f64.convert_i64_s
    f64.sqrt
    i32.trunc_f64_u
    i64.extend_i32_s
    i64.popcnt
    f64.convert_i64_s
    f64.nearest
    nop
    i64.reinterpret_f64
    local.set 2
)

)