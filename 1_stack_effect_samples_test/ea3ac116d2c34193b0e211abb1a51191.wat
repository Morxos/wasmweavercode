(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f32 f32 i32 f32)
    (local $temp i32)
    local.get 0
    i64.trunc_f32_u
    f32.convert_i64_u
    f32.ceil
    i64.trunc_f32_s
    i64.popcnt
    f64.convert_i64_u
    f32.demote_f64
    f32.abs
    i32.reinterpret_f32
    i32.extend8_s
    f32.convert_i32_s
    local.tee 1
    i32.reinterpret_f32
    i32.extend16_s
    i32.popcnt
    i32.popcnt
    ;;INSPECT
    i32.ctz
    f32.convert_i32_u
    i32.trunc_f32_s
    i32.extend8_s
    i32.extend16_s
    nop
    i32.eqz
    local.tee 2
    drop
    local.get 0
    f32.abs
    local.tee 3
    f32.abs
    drop
)

)