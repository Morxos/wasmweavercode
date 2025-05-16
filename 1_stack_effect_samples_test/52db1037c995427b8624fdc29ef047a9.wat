(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i64 i32 f64)
    (local $temp i32)
    ;;INSPECT
    local.get 0
    i64.popcnt
    f64.convert_i64_s
    i64.trunc_f64_s
    i64.extend16_s
    i64.eqz
    f32.reinterpret_i32
    f32.nearest
    i64.trunc_f32_u
    i64.ctz
    i64.eqz
    local.tee 1
    i32.extend16_s
    f32.convert_i32_u
    i64.trunc_f32_u
    i64.extend32_s
    f64.convert_i64_u
    i32.trunc_f64_s
    i32.eqz
    f64.convert_i32_s
    local.set 2
    (f32.const 9.072114832138824e+33)
    f32.ceil
    f64.promote_f32
    local.set 2
)

)