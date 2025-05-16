(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f64)
    (local $temp i32)
    ;;FLAG_0
    (f64.const 2.172921495642607e-129)
    i64.trunc_f64_s
    i64.popcnt
    drop
    (f32.const -2611.041015625)
    i64.trunc_f32_s
    f64.convert_i64_u
    local.set 0
    br 0
)

)