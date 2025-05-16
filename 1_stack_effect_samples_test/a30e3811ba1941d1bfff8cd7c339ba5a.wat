(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2066121301 (mut f32) (f32.const -1.492066415950168e+18))
(global $global_2223392911 (mut i32) (i32.const 1498739929))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    (f32.const 5922493613211648.0)
    global.set $global_2066121301
    (f32.const 3.647007325320512e+36)
    f32.floor
    f32.abs
    ;;INSPECT
    f32.trunc
    f64.promote_f32
    drop
    global.get $global_2066121301
    f32.trunc
    local.set 0
    local.get 0
    i32.reinterpret_f32
    f32.convert_i32_u
    i32.trunc_f32_u
    f32.convert_i32_u
    global.set $global_2066121301
    (i32.const -510)
    f32.reinterpret_i32
    i32.reinterpret_f32
    global.set $global_2223392911
)

)