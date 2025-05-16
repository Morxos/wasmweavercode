(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local $temp i32)
    (i32.const -16)
    f32.reinterpret_i32
    i32.reinterpret_f32
    i32.popcnt
    i32.popcnt
    i64.extend_i32_u
    f32.convert_i64_u
    f32.ceil
    nop
    i64.trunc_f32_u
    f32.convert_i64_u
    (f32.const -1.795696288946543e+29)
    f32.neg
    f32.lt
    f64.convert_i32_u
    f64.trunc
    i64.trunc_f64_u
    i64.popcnt
    i64.popcnt
    f64.convert_i64_s
    i64.trunc_f64_u
    i64.extend32_s
    f64.convert_i64_s
    i64.trunc_f64_u
    f64.reinterpret_i64
    f64.sqrt
    f64.neg
    ;;INSPECT
    i64.trunc_f64_s
    f32.convert_i64_s
    i64.trunc_f32_u
    f64.reinterpret_i64
    drop
)

)