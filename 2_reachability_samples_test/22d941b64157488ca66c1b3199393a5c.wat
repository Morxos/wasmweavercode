(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2636216520 (mut f32) (f32.const -4.393467594930127e+18))
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_0
    (f64.const 4.546896312427138e-242)
    f32.demote_f64
    global.set $global_2636216520
    global.get $global_2636216520
    nop
    drop
    nop
    br 0
)

)