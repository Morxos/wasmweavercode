(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    ;;FLAG_0
    (f64.const 1.5341759629542577e-155)
    i64.trunc_f64_s
    i64.eqz
    local.set 0
    (f32.const -1.2442407892979688e-15)
    drop
    br 0
)

)