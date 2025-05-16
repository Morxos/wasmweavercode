(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_0
    (i64.const -4940)
    i64.extend32_s
    i64.popcnt
    i32.wrap_i64
    f64.convert_i32_u
    f64.floor
    f32.demote_f64
    drop
    br 0
)

)