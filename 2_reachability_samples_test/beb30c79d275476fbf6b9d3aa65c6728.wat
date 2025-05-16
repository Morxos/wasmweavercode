(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    ;;FLAG_0
    (f64.const 7.793084062926142e-183)
    i64.trunc_f64_u
    drop
    (i32.const -10)
    i32.extend8_s
    (i64.const -69)
    i64.eqz
    i32.xor
    local.set 0
    return
)

)