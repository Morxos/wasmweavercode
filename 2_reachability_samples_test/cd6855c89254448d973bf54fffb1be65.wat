(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_93650268 (mut i64) (i64.const 7246981347363734238))
(func $run (export "run")
    (local i64)
    (local $temp i32)
    ;;FLAG_0
    nop
    nop
    global.get $global_93650268
    local.get 0
    i64.le_u
    nop
    (br_table 0)
    ;;FLAG_1
    br 0
)

)