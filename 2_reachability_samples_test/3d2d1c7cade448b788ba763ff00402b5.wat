(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_492620847 (mut i32) (i32.const 1636159064))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    ;;FLAG_0
    global.get $global_492620847
    local.get 0
    i32.shr_s
    local.get 0
    i32.mul
    i32.extend8_s
    (br_table 0)
    ;;FLAG_1
    br 0
)

)