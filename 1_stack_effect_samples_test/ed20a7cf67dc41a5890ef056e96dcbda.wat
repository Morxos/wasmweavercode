(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3158970283 (mut i32) (i32.const -1959877478))
(global $global_1776199390 (mut f64) (f64.const -2.2080092244757586e+18))
(func $run (export "run")
    (local f32 i32 f32)
    (local $temp i32)
    local.get 0
    local.get 0
    f32.abs
    i32.reinterpret_f32
    i64.extend_i32_s
    i64.popcnt
    i32.wrap_i64
    ;;INSPECT
    f32.reinterpret_i32
    i32.reinterpret_f32
    i32.extend16_s
    f32.convert_i32_s
    i64.trunc_f32_u
    drop
    f32.ceil
    i32.trunc_f32_s
    f32.convert_i32_u
    f32.nearest
    f32.trunc
    f32.abs
    i32.reinterpret_f32
    local.tee 1
    i32.extend8_s
    i32.eqz
    i64.extend_i32_s
    f32.convert_i64_u
    local.tee 2
    i32.reinterpret_f32
    global.set $global_3158970283
    global.get $global_3158970283
    f32.reinterpret_i32
    f32.trunc
    f32.trunc
    f64.promote_f32
    f64.nearest
    global.set $global_1776199390
)

)