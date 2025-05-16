(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_0
    (i64.const 41050)
    i64.extend16_s
    nop
    (i32.const 0)
    f64.convert_i32_u
    i32.trunc_f64_u
    nop
    f32.convert_i32_u
    f32.ceil
    i32.trunc_f32_u
    i32.clz
    i32.clz
    i32.clz
    drop
    i64.extend8_s
    f64.reinterpret_i64
    f64.neg
    f64.nearest
    i64.trunc_f64_u
    f64.convert_i64_u
    (i32.const -1713349325)
    i64.extend_i32_s
    i64.extend8_s
    i64.eqz
    f64.convert_i32_s
    f64.copysign
    i64.trunc_f64_u
    f64.reinterpret_i64
    f64.neg
    i32.trunc_f64_s
    i32.ctz
    (br_table 0)
    ;;FLAG_1
)

)