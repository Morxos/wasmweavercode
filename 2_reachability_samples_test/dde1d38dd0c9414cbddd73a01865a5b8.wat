(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_0
    (i32.const -1425780572)
    i64.extend_i32_s
    i64.ctz
    (i64.const 8308588110964536177)
    i64.ge_s
    i32.ctz
    (br_table 0)
    ;;FLAG_1
    nop
    br 0
)

)