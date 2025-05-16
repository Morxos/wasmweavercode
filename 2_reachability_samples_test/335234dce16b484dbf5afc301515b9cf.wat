(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f32 i64)
    (local $temp i32)
    ;;FLAG_0
    local.get 0
    f64.promote_f32
    f64.trunc
    i64.trunc_f64_u
    local.set 1
    br 0
)

)