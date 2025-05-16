(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i64)
    (local $temp i32)
    ;;FLAG_0
    (f64.const 6.185059166530725e+219)
    f64.nearest
    i64.reinterpret_f64
    local.set 0
    local.get 0
    i64.eqz
    drop
    br 0
)

)