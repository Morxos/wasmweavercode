(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3751900577 (mut f64) (f64.const -3.0410662886947144e+18))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    local.get 0
    i32.popcnt
    i32.extend16_s
    ;;INSPECT
    i32.popcnt
    local.get 0
    i32.extend8_s
    i32.shr_s
    i64.extend_i32_s
    f64.convert_i64_s
    f32.demote_f64
    i64.trunc_f32_s
    i64.ctz
    f64.convert_i64_u
    f64.sqrt
    f64.sqrt
    f64.sqrt
    f64.trunc
    i64.trunc_f64_u
    i64.popcnt
    i64.popcnt
    i64.extend32_s
    i64.extend32_s
    i64.ctz
    i64.clz
    f64.reinterpret_i64
    f32.demote_f64
    i64.trunc_f32_u
    i64.popcnt
    f32.convert_i64_s
    i64.trunc_f32_u
    f64.convert_i64_s
    f64.sqrt
    f64.abs
    global.set $global_3751900577
)

)