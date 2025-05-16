(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f32 i64)
    (local $temp i32)
    ;;FLAG_0
    (f64.const 2.7812466019374926e-183)
    (i64.const -27)
    f64.convert_i64_s
    nop
    f64.copysign
    (f32.const 148839696.0)
    local.tee 0
    f32.nearest
    (f32.const 0.006895401515066624)
    f32.neg
    f32.ne
    i64.extend_i32_s
    i64.ctz
    (f32.const 1.8574666209241006e+37)
    local.set 0
    i64.extend16_s
    local.tee 1
    f32.convert_i64_s
    i32.trunc_f32_u
    i64.extend_i32_s
    i64.extend16_s
    i64.eqz
    f32.convert_i32_s
    f32.floor
    i32.trunc_f32_u
    i64.extend_i32_s
    i64.extend8_s
    i64.extend16_s
    (i64.const 953001112)
    i64.le_s
    f64.convert_i32_u
    f64.lt
    (br_table 0)
    ;;FLAG_1
    (i64.const 488600088356949039)
    i64.popcnt
    i64.eqz
    (br_table 0)
    ;;FLAG_2
    return
)

)