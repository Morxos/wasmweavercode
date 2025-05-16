(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3162539333 (mut i64) (i64.const -6179466763373528601))
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_0
    global.get $global_3162539333
    i64.extend32_s
    drop
    global.get $global_3162539333
    i64.extend32_s
    global.set $global_3162539333
    br 0
)

)