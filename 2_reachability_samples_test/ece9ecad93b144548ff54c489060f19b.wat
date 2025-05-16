(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_0
    (i32.const 805978866)
    i32.popcnt
    i32.extend16_s
    i64.extend_i32_u
    f32.convert_i64_u
    i32.trunc_f32_s
    i32.popcnt
    (br_table 0)
    ;;FLAG_1
    br 0
)

)