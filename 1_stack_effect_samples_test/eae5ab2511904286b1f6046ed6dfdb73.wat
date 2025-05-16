(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2292758232 f32 (f32.const 3.964898028510249e+18))
(func $run (export "run")
    (local i32 i32 i32 f64)
    (local $temp i32)
    (f32.const -3.08531543082845e-34)
    (f32.const 8.370585659708284e-29)
    f32.eq
    local.tee 0
    local.get 0
    i32.shr_s
    f32.convert_i32_u
    f32.floor
    i64.trunc_f32_u
    i64.eqz
    local.tee 1
    local.tee 2
    f32.convert_i32_s
    f32.sqrt
    ;;INSPECT
    f32.trunc
    i64.trunc_f32_u
    f32.convert_i64_u
    i64.trunc_f32_u
    i64.extend16_s
    i64.ctz
    i64.popcnt
    f64.reinterpret_i64
    f64.nearest
    i64.reinterpret_f64
    i32.wrap_i64
    f32.reinterpret_i32
    global.get $global_2292758232
    f32.max
    f64.promote_f32
    f64.floor
    local.set 3
)

)