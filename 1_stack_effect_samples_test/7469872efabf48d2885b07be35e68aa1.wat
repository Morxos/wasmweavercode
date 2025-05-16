(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2727051280 (mut f32) (f32.const -4.840392683342004e+18))
(global $global_1652787580 (mut f64) (f64.const -6.397823773336371e+17))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    (f32.const -9.815452713817801e+23)
    (f32.const -2.8445046133384806e+17)
    f32.neg
    f32.neg
    i32.reinterpret_f32
    i64.extend_i32_u
    i64.extend16_s
    i64.extend8_s
    i64.clz
    ;;INSPECT
    i64.extend16_s
    i64.clz
    i64.extend16_s
    i64.clz
    i64.extend32_s
    i64.extend32_s
    i64.extend16_s
    i64.extend16_s
    i64.clz
    i64.clz
    i64.extend16_s
    local.get 0
    f32.reinterpret_i32
    i64.trunc_f32_u
    i64.ctz
    i64.clz
    i64.clz
    f32.convert_i64_s
    global.set $global_2727051280
    i64.extend32_s
    drop
    f32.neg
    f64.promote_f32
    f64.floor
    f64.floor
    f64.floor
    f64.neg
    global.set $global_1652787580
)

)