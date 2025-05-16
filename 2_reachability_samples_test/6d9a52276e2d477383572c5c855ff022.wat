(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_0
    nop
    (i64.const -8731322539110032431)
    i64.clz
    f64.convert_i64_s
    f64.abs
    i64.reinterpret_f64
    (i32.const -3)
    i64.extend_i32_u
    i64.ge_s
    (br_table 0)
    ;;FLAG_1
    br 0
)

)