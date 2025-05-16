(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    ;;FLAG_0
    local.get 0
    nop
    i32.clz
    i64.extend_i32_u
    (i64.const 83819149)
    i64.ge_s
    (br_table 0)
    ;;FLAG_1
    return
)

)