(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2997891970 (mut i64) (i64.const 8793052730037182603))
(func $run (export "run")
    (local i32 i64)
    (local $temp i32)
    ;;FLAG_0
    local.get 0
    i64.extend_i32_u
    f32.convert_i64_u
    i32.trunc_f32_u
    f32.reinterpret_i32
    f32.nearest
    global.get $global_2997891970
    i64.clz
    global.get $global_2997891970
    i64.eq
    i32.clz
    f64.convert_i32_u
    f64.floor
    i64.trunc_f64_s
    f64.convert_i64_u
    f64.sqrt
    f64.floor
    drop
    i64.trunc_f32_u
    local.tee 1
    i64.clz
    f64.reinterpret_i64
    i64.trunc_f64_s
    f64.reinterpret_i64
    nop
    drop
)

)