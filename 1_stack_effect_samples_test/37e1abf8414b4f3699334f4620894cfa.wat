(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_515697862 (mut f32) (f32.const 5.658513996802687e+18))
(func $run (export "run")
    (local f64 i64 i64)
    (local $temp i32)
    local.get 0
    (f32.const -3.265124914067791e-39)
    f32.ceil
    i64.trunc_f32_u
    i64.extend32_s
    i64.extend8_s
    local.tee 1
    i64.eqz
    i32.eqz
    drop
    i64.trunc_f64_s
    f64.convert_i64_s
    f64.nearest
    f32.demote_f64
    f32.abs
    i32.reinterpret_f32
    f32.convert_i32_u
    i64.trunc_f32_u
    i64.clz
    i64.popcnt
    f64.reinterpret_i64
    f64.trunc
    i64.trunc_f64_u
    local.tee 2
    i64.popcnt
    i64.ctz
    i64.popcnt
    i64.eqz
    f64.convert_i32_s
    f64.sqrt
    i64.reinterpret_f64
    ;;INSPECT
    i64.eqz
    f32.convert_i32_s
    i64.trunc_f32_u
    f32.convert_i64_u
    global.set $global_515697862
)

)