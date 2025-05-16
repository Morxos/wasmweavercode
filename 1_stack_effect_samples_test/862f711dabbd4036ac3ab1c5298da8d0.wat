(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1169670589 (mut f32) (f32.const -4.730256252855124e+18))
(global $global_4165573395 (mut f64) (f64.const -1.7231861601086444e+18))
(global $global_2590357320 (mut i32) (i32.const 1954573385))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    (i64.const 8928196)
    f32.convert_i64_s
    global.set $global_1169670589
    global.get $global_1169670589
    local.tee 0
    f32.trunc
    i32.trunc_f32_u
    f32.convert_i32_u
    i32.reinterpret_f32
    nop
    f32.convert_i32_u
    f64.promote_f32
    f64.floor
    ;;INSPECT
    f64.floor
    f64.sqrt
    f64.nearest
    f64.nearest
    f64.nearest
    f64.nearest
    f64.nearest
    f64.nearest
    f64.sqrt
    f64.nearest
    global.set $global_4165573395
    (f32.const -1.4237911294401329e-08)
    i32.reinterpret_f32
    i32.eqz
    global.set $global_2590357320
)

)