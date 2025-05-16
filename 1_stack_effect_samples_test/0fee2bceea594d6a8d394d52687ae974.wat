(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    local.get 0
    local.get 0
    f32.copysign
    i64.trunc_f32_s
    i64.ctz
    i64.eqz
    i32.eqz
    f32.convert_i32_s
    local.get 0
    f32.min
    f32.ceil
    ;;INSPECT
    i32.reinterpret_f32
    i32.extend8_s
    f32.convert_i32_u
    i64.trunc_f32_u
    f64.reinterpret_i64
    f64.nearest
    i32.trunc_f64_u
    i32.eqz
    i32.extend16_s
    i32.extend16_s
    (f32.const -104011.4375)
    i32.reinterpret_f32
    i32.extend16_s
    i32.div_s
    drop
    nop
)

)