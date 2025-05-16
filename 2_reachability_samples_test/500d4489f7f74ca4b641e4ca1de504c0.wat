(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f64)
    (local $temp i32)
    ;;FLAG_0
    (f32.const 1.6116273298274613e-20)
    i32.trunc_f32_u
    i32.extend8_s
    drop
    nop
    (i32.const -34540723)
    (f64.const 1.6303380408288411e+268)
    local.set 0
    br_if 0
    ;;FLAG_1
    (i64.const 233738)
    i64.extend8_s
    i64.extend16_s
    i64.popcnt
    i64.extend16_s
    i64.extend8_s
    i64.clz
    f32.convert_i64_u
    i32.trunc_f32_u
    (i64.const -4)
    i64.extend8_s
    i64.eqz
    i32.lt_u
    (br_table 0)
    ;;FLAG_2
)

)