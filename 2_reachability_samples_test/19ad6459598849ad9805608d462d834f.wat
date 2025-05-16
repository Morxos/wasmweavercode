(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_0
    nop
    (i32.const -82019)
    (i64.const 869216420)
    i64.eqz
    f64.convert_i32_u
    drop
    (br_table 0)
    ;;FLAG_1
    nop
    br 0
)

)