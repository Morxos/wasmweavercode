(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    ;;FLAG_0
    (i32.const -1044788776)
    i32.ctz
    local.tee 0
    (i32.const 6)
    i32.le_s
    i32.clz
    i32.eqz
    (br_table 0)
    ;;FLAG_1
    return
)

)