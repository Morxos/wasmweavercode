(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_0
    nop
    (f64.const 7.849910157725892e+246)
    (f64.const 1.4681188444557004e+81)
    f64.le
    f64.convert_i32_u
    f64.ceil
    f64.sqrt
    f64.abs
    i32.trunc_f64_u
    (br_table 0)
    ;;FLAG_1
    br 0
)

)