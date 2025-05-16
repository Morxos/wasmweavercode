(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    ;;FLAG_0
    nop
    (i32.const -12312479)
    local.tee 0
    i32.ctz
    i32.extend8_s
    (br_table 0)
    ;;FLAG_1
    br 0
)

)