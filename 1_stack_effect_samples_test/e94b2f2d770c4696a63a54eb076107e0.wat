(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    local.get 0
    local.get 0
    i64.trunc_f32_s
    f64.reinterpret_i64
    f64.abs
    i64.reinterpret_f64
    i64.popcnt
    f64.convert_i64_s
    f64.trunc
    f64.trunc
    f64.trunc
    ;;INSPECT
    f64.trunc
    f64.nearest
    f32.demote_f64
    f32.eq
    f32.convert_i32_s
    i32.trunc_f32_u
    i32.extend8_s
    f32.convert_i32_u
    f64.promote_f32
    f64.sqrt
    f64.neg
    f64.nearest
    f64.abs
    f64.sqrt
    f64.sqrt
    f64.trunc
    drop
    nop
    local.get 0
    f32.abs
    f32.floor
    i64.trunc_f32_u
    drop
)

)