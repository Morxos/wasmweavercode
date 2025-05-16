(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i64 i64)
    (local $temp i32)
    ;;FLAG_0
    local.get 0
    drop
    local.get 0
    local.tee 1
    f64.reinterpret_i64
    i64.trunc_f64_u
    f64.reinterpret_i64
    i64.trunc_f64_u
    i64.eqz
    drop
    br 0
)

)