(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f64)
    (local $temp i32)
    ;;FLAG_0
    local.get 0
    f64.neg
    local.get 0
    f64.copysign
    (f64.const 2.9081187184402246e+152)
    f64.le
    (br_table 0)
    ;;FLAG_1
    br 0
)

)