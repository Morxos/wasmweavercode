(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3236194959 (mut i32) (i32.const -387890200))
(func $run (export "run")
    (local i32 i64)
    (local $temp i32)
    local.get 0
    f32.reinterpret_i32
    f32.ceil
    (f32.const 21867628544.0)
    i64.trunc_f32_s
    local.tee 1
    i32.wrap_i64
    f32.reinterpret_i32
    f32.max
    (f32.const -6.1834724667124676e+35)
    f32.ne
    i32.clz
    i32.clz
    f32.reinterpret_i32
    i32.reinterpret_f32
    f32.convert_i32_u
    ;;INSPECT
    (i32.const 0)
    i32.clz
    f64.convert_i32_u
    i64.trunc_f64_s
    i32.wrap_i64
    i32.extend16_s
    global.set $global_3236194959
    i32.reinterpret_f32
    f32.convert_i32_u
    i32.trunc_f32_u
    i32.clz
    i32.clz
    drop
)

)