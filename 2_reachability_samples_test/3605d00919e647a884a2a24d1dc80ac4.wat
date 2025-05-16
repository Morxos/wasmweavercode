(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f64)
    (local $temp i32)
    ;;FLAG_0
    (i64.const -3876839839544738532)
    i64.extend32_s
    i64.ctz
    local.get 0
    i64.trunc_f64_u
    i64.lt_u
    local.get 0
    i32.trunc_f64_u
    i32.rotr
    drop
    br 0
)

)