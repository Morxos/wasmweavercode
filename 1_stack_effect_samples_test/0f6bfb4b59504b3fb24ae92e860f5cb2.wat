(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_313843936 (mut i64) (i64.const -623244263143205296))
(global $global_3344786916 (mut f64) (f64.const -7.512945502617747e+18))
(global $global_2474983654 (mut f32) (f32.const -1.2827882589373071e+18))
(func $run (export "run")
    (local i64)
    (local $temp i32)
    local.get 0
    f64.convert_i64_s
    nop
    f64.abs
    f64.trunc
    f64.sqrt
    ;;INSPECT
    i64.trunc_f64_u
    i64.popcnt
    f32.convert_i64_u
    global.get $global_313843936
    local.get 0
    i64.extend32_s
    f64.convert_i64_s
    local.get 0
    i64.extend32_s
    i64.clz
    i64.extend16_s
    i64.popcnt
    i64.extend32_s
    i64.extend16_s
    f64.reinterpret_i64
    f64.le
    i32.eqz
    i64.extend_i32_u
    i64.clz
    i64.extend32_s
    i64.ge_u
    i32.ctz
    f64.convert_i32_s
    f64.sqrt
    f64.floor
    f64.sqrt
    f64.sqrt
    f64.floor
    i32.trunc_f64_u
    f64.convert_i32_s
    global.set $global_3344786916
    global.set $global_2474983654
)

)