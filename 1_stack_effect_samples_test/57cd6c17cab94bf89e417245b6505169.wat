(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3796298046 (mut i64) (i64.const -5328001853700509497))
(global $global_4209275999 (mut i32) (i32.const -463630204))
(global $global_1561584895 (mut f64) (f64.const 7.256490534508728e+18))
(func $run (export "run")
    (local i64 i32)
    (local $temp i32)
    local.get 0
    i64.eqz
    (f32.const 1.4114340520958882e-31)
    i32.reinterpret_f32
    i32.or
    local.tee 1
    i32.extend16_s
    local.get 0
    i64.popcnt
    i64.clz
    global.set $global_3796298046
    f32.convert_i32_s
    i32.trunc_f32_u
    i32.clz
    global.set $global_4209275999
    local.get 0
    i64.popcnt
    f64.reinterpret_i64
    i64.trunc_f64_u
    i64.eqz
    f32.convert_i32_s
    i32.reinterpret_f32
    f32.reinterpret_i32
    i32.reinterpret_f32
    f32.convert_i32_u
    nop
    f64.promote_f32
    f64.floor
    f64.floor
    f64.floor
    f64.sqrt
    f64.nearest
    ;;INSPECT
    f64.sqrt
    f64.nearest
    global.set $global_1561584895
)

)