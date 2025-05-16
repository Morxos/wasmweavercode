(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3161255404 (mut i64) (i64.const -7120752163253029699))
(func $run (export "run")
    (local i64 f64 f64)
    (local $temp i32)
    local.get 0
    i64.extend32_s
    i64.popcnt
    f64.convert_i64_s
    f64.nearest
    i64.reinterpret_f64
    f64.reinterpret_i64
    i64.trunc_f64_u
    i64.eqz
    i32.eqz
    i64.extend_i32_s
    i64.extend32_s
    i64.eqz
    nop
    f32.reinterpret_i32
    f32.ceil
    ;;INSPECT
    f32.abs
    f32.floor
    i64.trunc_f32_u
    i64.ctz
    i64.eqz
    i64.extend_i32_s
    i64.popcnt
    i64.popcnt
    f64.convert_i64_s
    f64.nearest
    local.tee 1
    f64.nearest
    local.tee 2
    i64.reinterpret_f64
    global.set $global_3161255404
)

)