(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f64)
    (local $temp i32)
    ;;FLAG_0
    local.get 0
    f64.neg
    local.set 0
    (i64.const 4)
    local.get 0
    f64.floor
    f64.ceil
    f64.neg
    i64.trunc_f64_u
    i64.shl
    i32.wrap_i64
    (br_table 0)
    ;;FLAG_1
    nop
    br 0
)

)