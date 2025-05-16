(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_392103119 (mut f64) (f64.const -3.308527758972549e+18))
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_0
    global.get $global_392103119
    f64.trunc
    f64.neg
    f64.abs
    f32.demote_f64
    i32.reinterpret_f32
    (br_table 0)
    ;;FLAG_1
    (f32.const 5.923007965087891)
    i32.reinterpret_f32
    (br_table 0)
    ;;FLAG_2
    return
)

)