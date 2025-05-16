(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_999590794 i32 (i32.const -502936036))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    global.get $global_999590794
    i64.extend_i32_u
    f32.convert_i64_u
    i32.trunc_f32_u
    f32.convert_i32_s
    i64.trunc_f32_s
    i64.popcnt
    i64.eqz
    i32.extend16_s
    f32.convert_i32_u
    f32.abs
    i64.trunc_f32_s
    i64.ctz
    i64.popcnt
    i64.popcnt
    f64.reinterpret_i64
    f64.sqrt
    f64.floor
    f32.demote_f64
    f32.trunc
    i32.reinterpret_f32
    i32.extend16_s
    i32.extend16_s
    f32.reinterpret_i32
    i32.trunc_f32_s
    i32.extend8_s
    ;;INSPECT
    f64.convert_i32_s
    i64.trunc_f64_u
    i64.ctz
    (f32.const 1.6734137725411236e+20)
    f32.trunc
    f32.abs
    local.set 0
    i64.eqz
    drop
)

)