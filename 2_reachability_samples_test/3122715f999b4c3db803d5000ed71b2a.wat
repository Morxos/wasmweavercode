(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    ;;FLAG_0
    nop
    (i32.const -744369856)
    local.set 0
    local.get 0
    nop
    (br_table 0)
    ;;FLAG_1
    br 0
)

)