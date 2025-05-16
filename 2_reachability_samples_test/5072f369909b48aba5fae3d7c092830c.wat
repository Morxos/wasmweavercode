(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1973128882 (mut i64) (i64.const 3031000809942410573))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    ;;FLAG_0
    (i32.const 906445244)
    local.tee 0
    i64.extend_i32_u
    nop
    global.get $global_1973128882
    i64.ne
    local.get 0
    i32.shr_s
    drop
    return
)

)