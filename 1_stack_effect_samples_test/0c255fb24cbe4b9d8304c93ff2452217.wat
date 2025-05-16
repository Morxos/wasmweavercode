(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3795372765 (mut f32) (f32.const -6.951900310881174e+18))
(func $run (export "run")
    (local f32 i64)
    (local $temp i32)
    local.get 0
    i32.reinterpret_f32
    f64.convert_i32_s
    ;;INSPECT
    i32.trunc_f64_u
    f32.convert_i32_s
    f32.ceil
    f32.floor
    f32.ceil
    f32.nearest
    i32.reinterpret_f32
    f64.convert_i32_u
    local.get 0
    i64.trunc_f32_u
    i64.popcnt
    f64.convert_i64_u
    i64.reinterpret_f64
    i64.ctz
    f64.convert_i64_u
    i64.reinterpret_f64
    local.set 1
    f64.nearest
    f64.neg
    i64.reinterpret_f64
    i64.eqz
    (f32.const -8.581725402256005e+29)
    drop
    f32.convert_i32_u
    i32.trunc_f32_s
    i32.clz
    f32.reinterpret_i32
    global.set $global_3795372765
)

)