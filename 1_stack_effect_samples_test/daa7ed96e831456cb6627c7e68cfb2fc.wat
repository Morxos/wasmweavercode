(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f32 i64 i64)
    (local $temp i32)
    (f32.const 2.0372375044665983e-31)
    f32.sqrt
    local.tee 0
    f32.ceil
    f32.neg
    f32.floor
    f32.abs
    f32.ceil
    f32.ceil
    i64.trunc_f32_u
    f32.convert_i64_u
    f32.abs
    i64.trunc_f32_u
    f64.convert_i64_s
    i64.trunc_f64_u
    i64.ctz
    local.tee 1
    f32.convert_i64_u
    f32.abs
    f32.nearest
    f32.ceil
    (f32.const 8.977408123994176e-27)
    f32.eq
    i32.extend16_s
    ;;INSPECT
    f64.convert_i32_s
    i64.trunc_f64_s
    local.tee 2
    f64.reinterpret_i64
    f64.sqrt
    i64.trunc_f64_s
    f32.convert_i64_u
    i32.reinterpret_f32
    i32.extend16_s
    i32.extend8_s
    drop
)

)