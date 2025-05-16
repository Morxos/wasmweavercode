(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_4125364265 (mut i64) (i64.const -4977857852623055585))
(func $run (export "run")
    (local f64)
    (local $temp i32)
    local.get 0
    i32.trunc_f64_u
    i32.popcnt
    local.get 0
    f64.nearest
    f32.demote_f64
    f32.ceil
    f32.ceil
    f32.ceil
    i32.reinterpret_f32
    i32.shr_s
    i64.extend_i32_s
    f64.convert_i64_u
    f32.demote_f64
    i64.trunc_f32_u
    nop
    drop
    (f32.const -2.6772256390650376e-17)
    local.get 0
    f64.trunc
    i64.trunc_f64_s
    f64.convert_i64_s
    f64.trunc
    f64.nearest
    f64.neg
    f64.nearest
    i64.trunc_f64_u
    f32.convert_i64_s
    i64.trunc_f32_u
    f64.reinterpret_i64
    f64.sqrt
    ;;INSPECT
    f64.sqrt
    i64.trunc_f64_u
    i64.eqz
    i32.ctz
    f64.convert_i32_s
    i64.reinterpret_f64
    i64.popcnt
    global.set $global_4125364265
    drop
)

)