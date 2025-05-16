(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_0
    nop
    (f32.const 1.3459122291876232e-14)
    i32.trunc_f32_u
    f32.convert_i32_s
    drop
    br 0
)

)