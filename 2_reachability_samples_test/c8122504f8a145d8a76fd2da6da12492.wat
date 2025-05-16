(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_959388590 (mut f64) (f64.const 2.0072739215887647e+18))
(global $global_475915332 (mut f32) (f32.const -9.444577421127844e+17))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    ;;FLAG_0
    local.get 0
    local.set 0
    global.get $global_959388590
    f32.demote_f64
    global.set $global_475915332
    br 0
)

)