(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i64)
    (local $temp i32)
    ;;FLAG_0
    (f64.const 3.2193959385802977e-240)
    f64.neg
    f64.neg
    i64.reinterpret_f64
    local.set 0
    (f32.const 5.757824655238332e+25)
    drop
    br 0
)

)