(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2658754489 (mut f32) (f32.const -3.2337104265333965e+18))
(func $run (export "run")
    (local f64 f64)
    (local $temp i32)
    local.get 0
    i64.reinterpret_f64
    i64.clz
    f32.convert_i64_s
    f32.floor
    i64.trunc_f32_s
    i64.popcnt
    i64.ctz
    f32.convert_i64_u
    (f32.const 1897858269708288.0)
    f64.promote_f32
    local.tee 1
    f64.nearest
    f64.sqrt
    i64.trunc_f64_s
    (i32.const 83017917)
    f32.convert_i32_u
    global.set $global_2658754489
    f64.reinterpret_i64
    ;;INSPECT
    f64.nearest
    f64.nearest
    f64.nearest
    i64.trunc_f64_s
    i64.popcnt
    i64.eqz
    i32.extend16_s
    f32.convert_i32_u
    f32.max
    f32.nearest
    global.set $global_2658754489
)

)