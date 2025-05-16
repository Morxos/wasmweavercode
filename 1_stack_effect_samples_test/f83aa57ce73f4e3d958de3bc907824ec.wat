(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_98728340 (mut f32) (f32.const 5.54603230801376e+18))
(func $run (export "run")
    (local f32 i32 i64 f64)
    (local $temp i32)
    local.get 0
    local.get 0
    i64.trunc_f32_s
    i64.eqz
    local.get 0
    local.get 0
    f32.ceil
    f32.copysign
    f32.ceil
    f32.ceil
    i32.reinterpret_f32
    i32.shr_s
    local.tee 1
    f32.convert_i32_s
    ;;INSPECT
    f32.copysign
    f32.ceil
    i64.trunc_f32_u
    i64.eqz
    f64.convert_i32_s
    i64.trunc_f64_s
    i64.extend32_s
    f64.convert_i64_s
    f64.sqrt
    i64.reinterpret_f64
    local.tee 2
    f64.convert_i64_s
    f64.nearest
    (f32.const -7.556415780717024e-24)
    global.set $global_98728340
    f64.floor
    local.set 3
)

)