(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1274684087 (mut f64) (f64.const -8.775549389072136e+18))
(func $run (export "run")
    (local f32 f64)
    (local $temp i32)
    local.get 0
    i64.trunc_f32_s
    f64.convert_i64_s
    local.tee 1
    f64.trunc
    global.set $global_1274684087
    local.get 0
    i32.trunc_f32_u
    f32.reinterpret_i32
    f32.abs
    f32.nearest
    (f32.const 2.7494691923567033e-21)
    f32.abs
    local.get 0
    i32.reinterpret_f32
    i64.extend_i32_s
    f32.convert_i64_u
    i64.trunc_f32_u
    f64.convert_i64_u
    f64.trunc
    f64.sqrt
    f64.sqrt
    local.set 1
    f32.eq
    ;;INSPECT
    f64.convert_i32_u
    drop
)

)