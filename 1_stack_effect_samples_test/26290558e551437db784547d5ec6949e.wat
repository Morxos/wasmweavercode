(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3559003585 i32 (i32.const -1625380772))
(func $run (export "run")
    (local i64 i32 i32 i64)
    (local $temp i32)
    local.get 0
    f64.reinterpret_i64
    f64.trunc
    f64.trunc
    f64.trunc
    f64.trunc
    i64.reinterpret_f64
    i64.extend32_s
    i64.extend32_s
    f32.convert_i64_u
    ;;INSPECT
    i32.trunc_f32_u
    local.get 0
    i64.popcnt
    i64.eqz
    i32.shr_s
    i32.extend8_s
    i32.eqz
    f64.convert_i32_s
    f64.trunc
    global.get $global_3559003585
    (i32.const 224888)
    i32.or
    local.tee 1
    global.get $global_3559003585
    i32.or
    i32.ctz
    local.tee 2
    f64.convert_i32_s
    f64.trunc
    f64.max
    f64.ceil
    i64.reinterpret_f64
    local.tee 3
    i64.clz
    i64.clz
    drop
)

)