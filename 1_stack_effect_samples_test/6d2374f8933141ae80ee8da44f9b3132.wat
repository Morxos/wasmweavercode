(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3340378415 (mut f32) (f32.const 6.046634454582034e+18))
(func $run (export "run")
    (local i32 f64 f64 f32)
    (local $temp i32)
    local.get 0
    f32.convert_i32_u
    i64.trunc_f32_u
    f64.reinterpret_i64
    local.tee 1
    global.get $global_3340378415
    nop
    f32.ceil
    global.set $global_3340378415
    ;;INSPECT
    local.tee 2
    local.get 0
    f32.reinterpret_i32
    i64.trunc_f32_u
    i32.wrap_i64
    f32.reinterpret_i32
    f32.trunc
    f32.trunc
    f32.sqrt
    f32.trunc
    f32.trunc
    f32.trunc
    f32.trunc
    f32.trunc
    f32.sqrt
    f32.floor
    f32.sqrt
    local.tee 3
    f32.trunc
    f32.floor
    local.set 3
    local.set 1
)

)