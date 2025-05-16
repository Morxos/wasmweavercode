(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_4138608558 (mut i32) (i32.const -1027599019))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    ;;FLAG_0
    (i32.const -439920964)
    i32.eqz
    local.get 0
    (i32.const -7245881)
    i32.ctz
    global.set $global_4138608558
    local.set 0
    (br_table 0)
    ;;FLAG_1
    return
)

)