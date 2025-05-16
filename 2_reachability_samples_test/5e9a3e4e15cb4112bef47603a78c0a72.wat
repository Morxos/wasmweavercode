(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1720816911 (mut i32) (i32.const -175556898))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    ;;FLAG_0
    (i64.const 1)
    (i32.const 70557)
    local.set 0
    i64.eqz
    global.set $global_1720816911
    (i32.const -186432)
    (br_table 0)
    ;;FLAG_1
    return
)

)