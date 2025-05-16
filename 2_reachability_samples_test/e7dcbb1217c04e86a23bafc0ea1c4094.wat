(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    ;;FLAG_0
    (f64.const 2.3924853396869244e-209)
    f64.nearest
    f64.trunc
    f64.ceil
    i32.trunc_f64_s
    local.set 0
    br 0
)

)