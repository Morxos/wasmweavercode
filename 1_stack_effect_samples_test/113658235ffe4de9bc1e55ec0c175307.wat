(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3744189226 (mut i64) (i64.const 2431978482286910788))
(func $run (export "run")
    (local f64)
    (local $temp i32)
    local.get 0
    f64.nearest
    f64.floor
    i64.trunc_f64_u
    i64.ctz
    i64.popcnt
    f64.convert_i64_u
    f64.trunc
    f64.nearest
    f64.sqrt
    f64.neg
    f64.neg
    f64.abs
    f64.neg
    i64.reinterpret_f64
    i64.popcnt
    f64.reinterpret_i64
    f64.abs
    i64.trunc_f64_s
    i64.extend32_s
    i32.wrap_i64
    i64.extend_i32_u
    f64.convert_i64_s
    f32.demote_f64
    f32.nearest
    i32.trunc_f32_u
    i64.extend_i32_s
    i32.wrap_i64
    i32.clz
    ;;INSPECT
    i32.extend8_s
    i32.extend16_s
    i32.extend16_s
    i32.extend8_s
    i64.extend_i32_s
    global.set $global_3744189226
)

)