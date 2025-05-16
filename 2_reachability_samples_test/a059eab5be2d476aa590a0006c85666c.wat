(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f64)
    (local $temp i32)
    ;;FLAG_0
    local.get 0
    i32.trunc_f64_u
    i32.popcnt
    drop
    (i64.const 72)
    f32.convert_i64_u
    i32.trunc_f32_u
    (br_table 0)
    ;;FLAG_1
    br 0
)

)