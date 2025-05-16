(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1427756077 (mut f32) (f32.const 5.390831843706667e+18))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    (f32.const 8.220084881667127e+21)
    f64.promote_f32
    f64.nearest
    f64.trunc
    f64.sqrt
    f32.demote_f64
    f32.trunc
    global.set $global_1427756077
    nop
    global.get $global_1427756077
    ;;INSPECT
    f32.floor
    f32.sqrt
    f32.abs
    drop
    global.get $global_1427756077
    f32.floor
    f32.sqrt
    local.tee 0
    f32.sqrt
    i32.reinterpret_f32
    local.get 0
    f64.promote_f32
    drop
    f32.convert_i32_u
    global.set $global_1427756077
)

)