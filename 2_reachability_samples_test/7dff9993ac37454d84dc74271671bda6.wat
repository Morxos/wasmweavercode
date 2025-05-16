(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_0
    nop
    (f32.const 1.117124597271868e-07)
    f32.neg
    f32.abs
    i32.reinterpret_f32
    (br_table 0)
    ;;FLAG_1
    return
)

)