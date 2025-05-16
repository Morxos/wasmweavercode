(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1187653817 (mut i32) (i32.const 192659964))
(global $global_925801474 (mut i64) (i64.const 3918924300766579060))
(func $run (export "run")
    (local i64)
    (local $temp i32)
    ;;FLAG_0
    global.get $global_1187653817
    local.get 0
    global.set $global_925801474
    (i64.const 26)
    global.set $global_925801474
    i32.popcnt
    i64.extend_i32_u
    drop
    (i64.const 2681118)
    i64.ctz
    drop
    br 0
)

)