(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    ;;FLAG_0
    nop
    (f64.const 7.235602744855775e-274)
    i64.trunc_f64_s
    i32.wrap_i64
    local.tee 0
    (br_table 0)
    ;;FLAG_1
    br 0
)

)