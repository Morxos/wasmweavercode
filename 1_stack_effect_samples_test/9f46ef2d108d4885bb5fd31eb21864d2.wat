(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1576776703 (mut f32) (f32.const -8.316943447009264e+18))
(global $global_2559276165 (mut i32) (i32.const 25928240))
(func $run (export "run")
    (local f64 i32)
    (local $temp i32)
    local.get 0
    i64.trunc_f64_u
    i64.clz
    i32.wrap_i64
    i64.extend_i32_s
    i32.wrap_i64
    i32.extend8_s
    (f32.const 2.6455774480729954e-22)
    ;;INSPECT
    i64.trunc_f32_s
    i64.ctz
    f64.convert_i64_s
    f64.nearest
    f64.trunc
    f64.nearest
    f64.floor
    i32.trunc_f64_u
    i32.eq
    f32.convert_i32_u
    i32.reinterpret_f32
    local.tee 1
    f32.convert_i32_u
    global.set $global_1576776703
    (i32.const -491774071)
    i32.clz
    f32.reinterpret_i32
    i32.reinterpret_f32
    f32.reinterpret_i32
    i32.reinterpret_f32
    i64.extend_i32_u
    i32.wrap_i64
    f32.reinterpret_i32
    f32.trunc
    i32.reinterpret_f32
    global.set $global_2559276165
)

)