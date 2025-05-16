(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_4121063909 (mut i64) (i64.const -1218597361520163649))
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_0
    global.get $global_4121063909
    i64.popcnt
    i64.clz
    i64.extend32_s
    global.set $global_4121063909
    br 0
)

)