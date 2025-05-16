(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_103089430 (mut i32) (i32.const 1436206701))
(func $run (export "run")
    (local i64)
    (local $temp i32)
    ;;FLAG_0
    (i64.const -49285)
    i32.wrap_i64
    global.set $global_103089430
    local.get 0
    global.get $global_103089430
    drop
    drop
    br 0
)

)