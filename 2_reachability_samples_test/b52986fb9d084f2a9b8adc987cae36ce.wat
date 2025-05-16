(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    ;;FLAG_0
    (i64.const 5)
    i32.wrap_i64
    f64.convert_i32_u
    f64.neg
    i64.trunc_f64_s
    i64.eqz
    nop
    (br_table 0)
    ;;FLAG_1
    local.get 0
    i64.trunc_f32_s
    i64.extend32_s
    i64.eqz
    (br_table 0)
    ;;FLAG_2
    br 0
)

)