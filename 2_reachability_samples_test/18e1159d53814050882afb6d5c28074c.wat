(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_0
    (i64.const 95)
    i64.eqz
    (i32.const 1799155915)
    i32.popcnt
    i32.or
    (br_table 0)
    ;;FLAG_1
    br 0
)

)