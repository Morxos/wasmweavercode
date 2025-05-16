(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    ;;FLAG_0
    (i64.const -1398988165119588692)
    f32.convert_i64_u
    local.set 0
    local.get 0
    i32.reinterpret_f32
    i64.extend_i32_u
    i64.eqz
    (br_table 0)
    ;;FLAG_1
    br 0
)

)