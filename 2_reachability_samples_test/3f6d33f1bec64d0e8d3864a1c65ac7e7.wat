(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    ;;FLAG_0
    (f64.const 8.226478636178106e-258)
    f32.demote_f64
    f32.trunc
    i32.trunc_f32_s
    local.set 0
    nop
    br 0
)

)