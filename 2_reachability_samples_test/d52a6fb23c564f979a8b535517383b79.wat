(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i64)
    (local $temp i32)
    ;;FLAG_0
    (i64.const 636802972)
    f64.reinterpret_i64
    i64.trunc_f64_s
    local.set 0
    (f64.const 8.222630728739391e+102)
    f64.neg
    drop
    br 0
)

)