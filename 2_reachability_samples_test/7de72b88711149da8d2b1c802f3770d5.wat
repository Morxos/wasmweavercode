(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_0
    (f32.const -2.4654006066532e+33)
    nop
    drop
    nop
    (i32.const -4)
    (i32.const 870419)
    i32.shr_s
    (br_table 0)
    ;;FLAG_1
    br 0
)

)