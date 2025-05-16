(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    ;;FLAG_0
    (f64.const 4.741574228319305e+259)
    i64.reinterpret_f64
    (i64.const -55767463)
    i64.ge_s
    local.tee 0
    (br_table 0)
    ;;FLAG_1
    br 0
)

)