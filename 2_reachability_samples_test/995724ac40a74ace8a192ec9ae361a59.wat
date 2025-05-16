(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i64)
    (local $temp i32)
    ;;FLAG_0
    (i32.const 82)
    (i32.const -669)
    i32.xor
    i64.extend_i32_s
    local.get 0
    i64.le_s
    (br_table 0)
    ;;FLAG_1
    br 0
)

)