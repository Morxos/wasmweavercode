(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1582009204 (mut f32) (f32.const 8.349209715237978e+18))
(func $run (export "run")
    (local f64 i32 i32)
    (local $temp i32)
    local.get 0
    f32.demote_f64
    f32.abs
    i32.reinterpret_f32
    local.tee 1
    i32.extend8_s
    i32.eqz
    f32.convert_i32_s
    drop
    (f32.const -52.25240707397461)
    f32.abs
    i32.reinterpret_f32
    local.tee 2
    f32.reinterpret_i32
    global.set $global_1582009204
    (f32.const -7.2420301905714465e-37)
    local.get 0
    f64.neg
    f64.nearest
    i64.trunc_f64_u
    i64.eqz
    f32.reinterpret_i32
    f32.copysign
    f32.sqrt
    ;;INSPECT
    drop
)

)