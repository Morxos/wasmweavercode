(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2881435350 (mut f32) (f32.const 3.571881720330322e+18))
(func $run (export "run")
    (local f64)
    (local $temp i32)
    ;;FLAG_0
    nop
    local.get 0
    f64.neg
    f32.demote_f64
    global.set $global_2881435350
    br 0
)

)