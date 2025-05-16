(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f64)
    (local $temp i32)
    ;;FLAG_0
    (f64.const 2.3035726368197625e-258)
    f64.ceil
    f64.nearest
    f64.ceil
    local.tee 0
    f64.nearest
    i64.reinterpret_f64
    i64.extend8_s
    drop
    return
)

)