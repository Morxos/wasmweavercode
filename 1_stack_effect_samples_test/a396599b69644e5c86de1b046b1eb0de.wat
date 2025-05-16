(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i64 f32 i32 i32 f64)
    (local $temp i32)
    local.get 0
    f32.convert_i64_u
    f32.ceil
    i64.trunc_f32_u
    i64.popcnt
    i64.ctz
    ;;INSPECT
    i64.popcnt
    i64.eqz
    i32.extend16_s
    i32.popcnt
    f32.convert_i32_s
    f32.ceil
    i64.trunc_f32_u
    f32.convert_i64_u
    i64.trunc_f32_u
    f32.convert_i64_u
    local.set 1
    local.get 0
    (f32.const -1.2398901809712559e-37)
    i32.reinterpret_f32
    i32.extend8_s
    local.tee 2
    local.tee 3
    local.set 2
    f32.convert_i64_u
    i64.trunc_f32_u
    f64.reinterpret_i64
    local.tee 4
    f64.sqrt
    local.set 4
)

)