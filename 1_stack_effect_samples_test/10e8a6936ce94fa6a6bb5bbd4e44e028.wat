(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2677473313 (mut f64) (f64.const -8.014517464093213e+18))
(func $run (export "run")
    (local i32 i64)
    (local $temp i32)
    local.get 0
    f32.convert_i32_u
    (f32.const -6.857641383170541e+31)
    f32.neg
    f32.lt
    f32.convert_i32_u
    i64.trunc_f32_u
    i64.ctz
    i64.ctz
    i64.popcnt
    i64.ctz
    f32.convert_i64_u
    f32.trunc
    f32.ceil
    f32.ceil
    ;;INSPECT
    f32.ceil
    f32.ceil
    i32.reinterpret_f32
    local.get 0
    i32.shr_s
    f32.convert_i32_s
    i32.reinterpret_f32
    i32.eqz
    f64.convert_i32_u
    i64.reinterpret_f64
    local.tee 1
    i64.extend16_s
    i64.extend16_s
    f64.reinterpret_i64
    f64.nearest
    f64.abs
    f64.nearest
    local.get 0
    f32.convert_i32_u
    drop
    global.set $global_2677473313
)

)