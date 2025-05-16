(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2527905020 (mut f64) (f64.const -9.155521738133082e+18))
(func $run (export "run")
    (local f32 i64)
    (local $temp i32)
    local.get 0
    i32.trunc_f32_u
    local.get 0
    f32.sqrt
    f32.ceil
    f32.ceil
    f32.nearest
    local.get 0
    f32.eq
    i32.shr_s
    f32.reinterpret_i32
    ;;INSPECT
    f32.ceil
    i64.trunc_f32_u
    f64.reinterpret_i64
    f64.abs
    f64.sqrt
    f64.sqrt
    f64.abs
    i64.reinterpret_f64
    local.tee 1
    i64.eqz
    i32.extend8_s
    f32.convert_i32_u
    i64.trunc_f32_u
    i64.ctz
    f64.convert_i64_s
    global.set $global_2527905020
    (f32.const -2.7717899548719466e-23)
    f32.ceil
    f32.neg
    i32.trunc_f32_s
    f64.convert_i32_u
    i64.reinterpret_f64
    i64.popcnt
    i64.popcnt
    drop
)

)