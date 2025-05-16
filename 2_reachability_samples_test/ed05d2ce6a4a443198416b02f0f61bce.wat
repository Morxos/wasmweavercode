(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_0
    (f64.const 9.245615807433098e-32)
    f64.floor
    i64.trunc_f64_s
    nop
    nop
    f32.convert_i64_s
    drop
    br 0
)

)