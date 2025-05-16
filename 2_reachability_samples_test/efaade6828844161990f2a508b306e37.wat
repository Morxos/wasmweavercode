(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    ;;FLAG_0
    (i64.const -51)
    local.get 0
    f32.trunc
    f32.floor
    drop
    i64.eqz
    (br_table 0)
    ;;FLAG_1
    br 0
)

)