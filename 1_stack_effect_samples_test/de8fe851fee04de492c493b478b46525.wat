(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1546891525 (mut f64) (f64.const 3.4129177032681247e+18))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    local.get 0
    f32.convert_i32_s
    i64.trunc_f32_u
    i64.extend8_s
    i64.popcnt
    i64.popcnt
    ;;INSPECT
    f64.convert_i64_u
    f64.nearest
    f64.trunc
    i64.reinterpret_f64
    local.get 0
    i64.extend_i32_s
    i64.eqz
    f32.reinterpret_i32
    f32.trunc
    i32.reinterpret_f32
    i32.clz
    f32.convert_i32_u
    f32.sqrt
    i64.trunc_f32_u
    i64.extend32_s
    i64.sub
    f64.convert_i64_s
    global.set $global_1546891525
    global.get $global_1546891525
    f64.floor
    f32.demote_f64
    i32.trunc_f32_s
    i32.clz
    f32.convert_i32_s
    i64.trunc_f32_u
    f32.convert_i64_u
    drop
)

)