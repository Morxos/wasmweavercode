(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f64)
    (local $temp i32)
    ;;FLAG_0
    nop
    local.get 0
    i32.trunc_f64_u
    i32.extend8_s
    i32.popcnt
    (br_table 0)
    ;;FLAG_1
    return
)

)