(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2858496110 (mut f64) (f64.const -4.708121963986495e+18))
(global $global_2421961033 (mut f32) (f32.const 1.9662338290855444e+18))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    local.get 0
    i64.extend_i32_s
    i64.extend32_s
    i64.clz
    f64.reinterpret_i64
    f64.abs
    f64.neg
    f32.demote_f64
    global.get $global_2858496110
    f64.abs
    f64.trunc
    f64.nearest
    f64.sqrt
    f64.floor
    f64.floor
    f64.floor
    f64.floor
    f64.floor
    f64.floor
    f64.floor
    i32.trunc_f64_u
    f64.convert_i32_u
    f64.floor
    f64.floor
    f64.sqrt
    f64.floor
    i64.trunc_f64_u
    i64.popcnt
    i64.popcnt
    i64.ctz
    i64.ctz
    f64.convert_i64_s
    f64.floor
    i64.reinterpret_f64
    f32.convert_i64_u
    f32.lt
    f64.convert_i32_u
    i64.trunc_f64_u
    i64.extend32_s
    ;;INSPECT
    i64.ctz
    f32.convert_i64_u
    f32.nearest
    global.set $global_2421961033
)

)