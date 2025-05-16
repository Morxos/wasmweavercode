(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    local.get 0
    f32.ceil
    f32.abs
    f32.ceil
    i64.trunc_f32_s
    f64.convert_i64_s
    f64.trunc
    f32.demote_f64
    f32.floor
    f32.sqrt
    f32.floor
    f32.trunc
    i64.trunc_f32_s
    i64.eqz
    i64.extend_i32_s
    i64.eqz
    nop
    i64.extend_i32_u
    i64.extend32_s
    i64.eqz
    f32.convert_i32_u
    f32.abs
    i32.trunc_f32_s
    f64.convert_i32_s
    f64.trunc
    i64.reinterpret_f64
    i64.ctz
    i64.ctz
    i64.extend32_s
    i64.eqz
    i32.ctz
    f64.convert_i32_u
    f32.demote_f64
    f32.floor
    f32.sqrt
    i64.trunc_f32_u
    ;;INSPECT
    nop
    f64.convert_i64_s
    f64.neg
    i64.reinterpret_f64
    i64.extend16_s
    f32.convert_i64_u
    drop
)

)