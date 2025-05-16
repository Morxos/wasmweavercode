(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_0
    (f64.const 3.5597408799666324e+25)
    f64.sqrt
    i64.trunc_f64_s
    f64.reinterpret_i64
    i64.trunc_f64_u
    nop
    drop
    br 0
)

)