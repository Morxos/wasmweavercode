(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3668960972 (mut f32) (f32.const 5.639162042398015e+18))
(func $run (export "run")
    (local f32 i64)
    (local $temp i32)
    local.get 0
    local.get 0
    i64.trunc_f32_u
    f64.convert_i64_s
    (f32.const -1.0180893742862916e-20)
    f32.abs
    ;;INSPECT
    i64.trunc_f32_s
    local.tee 1
    f64.convert_i64_u
    f32.demote_f64
    f32.abs
    f32.abs
    global.set $global_3668960972
    f32.demote_f64
    f32.ceil
    i32.reinterpret_f32
    drop
    i32.reinterpret_f32
    i32.clz
    f32.convert_i32_u
    f32.sqrt
    global.set $global_3668960972
    local.get 0
    i32.trunc_f32_u
    i32.eqz
    i32.popcnt
    f64.convert_i32_s
    i64.reinterpret_f64
    local.set 1
)

)