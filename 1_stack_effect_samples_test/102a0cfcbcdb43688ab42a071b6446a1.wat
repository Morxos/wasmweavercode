(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i64 f32 f32)
    (local $temp i32)
    local.get 0
    f64.reinterpret_i64
    f64.sqrt
    i64.trunc_f64_u
    i64.popcnt
    i64.extend8_s
    i64.extend32_s
    f64.convert_i64_u
    i32.trunc_f64_u
    f32.convert_i32_s
    local.tee 1
    i64.trunc_f32_u
    nop
    i64.ctz
    i64.eqz
    f64.convert_i32_s
    f32.demote_f64
    f32.floor
    f32.trunc
    f32.ceil
    i32.trunc_f32_s
    f32.convert_i32_u
    local.tee 2
    i64.trunc_f32_u
    i64.eqz
    i32.eqz
    i32.extend8_s
    ;;INSPECT
    i32.extend16_s
    i32.extend16_s
    drop
)

)