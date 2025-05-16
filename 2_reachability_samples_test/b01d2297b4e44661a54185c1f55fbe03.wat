(module
(type $sig_function_4051215906 (func))
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3509629999 (mut i32) (i32.const -2092337754))
(func $function_4051215906 (export "function_4051215906")
    (local i32)
    (local $temp i32)
    ;;FLAG_0
    global.get $global_3509629999
    global.set $global_3509629999
    local.get 0
    global.set $global_3509629999
    nop
)
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_1
    global.get $global_3509629999
    i32.extend16_s
    i64.extend_i32_u
    call $function_4051215906
    (i64.const -9297)
    i64.le_u
    drop
    br 0
)

)