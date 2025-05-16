(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1568402963 (mut f64) (f64.const -2.609435794053542e+18))
(func $run (export "run")
    (local f32 f32)
    (local $temp i32)
    ;;FLAG_0
    (i32.const 19774)
    i64.extend_i32_s
    f32.convert_i64_s
    local.set 0
    (f32.const -1.6340945502862158e-26)
    global.get $global_1568402963
    f64.ceil
    f64.floor
    i64.trunc_f64_s
    i64.extend32_s
    i64.eqz
    drop
    local.tee 1
    drop
    (f32.const -1.6411067349508812e-07)
    i32.reinterpret_f32
    i32.clz
    i32.ctz
    i32.ctz
    (br_table 0)
    ;;FLAG_1
)

)