(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_425964265 (mut f32) (f32.const 1.250919876478894e+18))
(func $run (export "run")
    (local f32 i64)
    (local $temp i32)
    local.get 0
    i32.trunc_f32_u
    i32.ctz
    i32.ctz
    i32.extend16_s
    f32.convert_i32_s
    i64.trunc_f32_u
    i64.popcnt
    i64.eqz
    f64.convert_i32_s
    f64.trunc
    f64.trunc
    f32.demote_f64
    i32.reinterpret_f32
    i32.popcnt
    i32.popcnt
    (f32.const -5.497754072569564e-25)
    drop
    f32.reinterpret_i32
    f32.ceil
    ;;INSPECT
    f32.abs
    i64.trunc_f32_u
    i64.popcnt
    i64.ctz
    local.tee 1
    f64.convert_i64_s
    i32.trunc_f64_u
    f32.convert_i32_s
    global.set $global_425964265
    (f32.const -1.1120644001454284e-33)
    f32.nearest
    i64.trunc_f32_u
    i64.extend16_s
    i64.eqz
    f32.convert_i32_s
    i32.trunc_f32_u
    i32.extend16_s
    drop
)

)