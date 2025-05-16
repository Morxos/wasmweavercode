(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i64)
    (local $temp i32)
    ;;FLAG_0
    (i64.const 913682)
    local.tee 0
    i64.ctz
    local.set 0
    (i32.const 4192844)
    (br_table 0)
    ;;FLAG_1
    br 0
)

)