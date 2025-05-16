(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    local.get 0
    i64.trunc_f32_s
    f64.convert_i64_u
    f64.sqrt
    f64.sqrt
    f64.sqrt
    f64.trunc
    i64.trunc_f64_u
    f64.convert_i64_u
    i64.trunc_f64_u
    f64.reinterpret_i64
    f64.neg
    f64.trunc
    f64.trunc
    f64.sqrt
    f64.trunc
    f64.neg
    f64.trunc
    f64.trunc
    f64.neg
    f64.sqrt
    f64.trunc
    i64.reinterpret_f64
    i64.extend16_s
    f64.convert_i64_s
    i32.trunc_f64_u
    i32.extend8_s
    f64.convert_i32_s
    f64.ceil
    i64.trunc_f64_u
    f64.reinterpret_i64
    f32.demote_f64
    ;;INSPECT
    i32.reinterpret_f32
    f64.convert_i32_s
    f64.abs
    f64.sqrt
    f64.sqrt
    f64.ceil
    drop
)

)