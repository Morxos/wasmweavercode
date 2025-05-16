(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2715151701 (mut f32) (f32.const -9.139065333527609e+18))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    local.get 0
    f32.nearest
    i64.trunc_f32_u
    i64.extend32_s
    drop
    (f32.const -31680983040.0)
    f32.trunc
    drop
    (f32.const 0.20725500583648682)
    global.set $global_2715151701
    local.get 0
    f32.ceil
    f32.trunc
    i32.reinterpret_f32
    i32.eqz
    ;;INSPECT
    f64.convert_i32_s
    f64.trunc
    f32.demote_f64
    local.get 0
    f32.min
    drop
    (f32.const 2.5746162136792993e+23)
    f64.promote_f32
    f64.floor
    f64.floor
    f64.sqrt
    f32.demote_f64
    global.set $global_2715151701
)

)