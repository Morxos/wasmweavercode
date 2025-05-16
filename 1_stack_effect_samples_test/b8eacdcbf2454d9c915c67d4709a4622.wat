(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_106958847 (mut f32) (f32.const -7.494766584909529e+18))
(func $run (export "run")
    (local f64 i64)
    (local $temp i32)
    local.get 0
    local.get 0
    i64.trunc_f64_u
    f64.convert_i64_s
    f64.trunc
    ;;INSPECT
    f64.gt
    f32.reinterpret_i32
    i32.trunc_f32_s
    (f32.const -1.6775947021925087e-36)
    i32.reinterpret_f32
    i32.and
    (f32.const 1.2411797392815338e-13)
    f64.promote_f32
    i64.reinterpret_f64
    local.tee 1
    i64.eqz
    i32.lt_u
    i32.clz
    i32.clz
    i32.clz
    f32.convert_i32_u
    i32.reinterpret_f32
    f32.convert_i32_u
    i32.trunc_f32_u
    f32.convert_i32_s
    f32.floor
    global.set $global_106958847
)

)