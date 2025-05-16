(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i64 f64)
    (local $temp i32)
    ;;FLAG_0
    nop
    local.get 0
    i64.popcnt
    nop
    i64.clz
    i64.popcnt
    (f64.const 1.463823821819465e+93)
    local.set 1
    i64.eqz
    i64.extend_i32_s
    i64.extend16_s
    i64.extend8_s
    i64.extend16_s
    i64.extend16_s
    i64.extend16_s
    i64.extend16_s
    f64.convert_i64_u
    f64.abs
    i32.trunc_f64_u
    (br_table 0)
    ;;FLAG_1
    (i64.const 26)
    i64.extend8_s
    i64.extend16_s
    f64.reinterpret_i64
    f64.trunc
    f64.trunc
    i32.trunc_f64_u
    (br_table 0)
    ;;FLAG_2
)

)