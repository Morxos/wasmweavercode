(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i64)
    (local $temp i32)
    ;;FLAG_0
    (f64.const 5.449599234683565e-10)
    f64.sqrt
    i64.trunc_f64_u
    local.set 0
    (i32.const 9)
    (br_table 0)
    ;;FLAG_1
    br 0
)

)