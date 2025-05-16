(module
(type $sig_function_374564051 (func))
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $function_374564051 (export "function_374564051")
    (local $temp i32)
    ;;FLAG_0
    (f64.const 4.898980683289974e-57)
    nop
    f32.demote_f64
    i32.reinterpret_f32
    (i32.const -675)
    i32.mul
    (br_table 0)
    ;;FLAG_1
)
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_2
    (f32.const -1.8466654613741635e+35)
    f32.abs
    f32.neg
    call $function_374564051
    drop
    call $function_374564051
)

)