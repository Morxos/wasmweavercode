(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i64)
    (local $temp i32)
    ;;FLAG_0
    (i64.const 7820172)
    local.tee 0
    i64.eqz
    f64.convert_i32_s
    f32.demote_f64
    (i64.const -45)
    i64.popcnt
    f64.reinterpret_i64
    f64.floor
    f64.nearest
    f64.floor
    f64.abs
    i32.trunc_f64_s
    i64.extend_i32_u
    f32.convert_i64_u
    f32.le
    (br_table 0)
    ;;FLAG_1
    br 0
)

)