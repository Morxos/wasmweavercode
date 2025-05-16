(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_369666985 (mut i64) (i64.const 7872468985997126574))
(func $run (export "run")
    (local i32 f64)
    (local $temp i32)
    local.get 0
    f32.convert_i32_s
    f32.ceil
    i64.trunc_f32_u
    f64.convert_i64_s
    ;;INSPECT
    f64.nearest
    f64.trunc
    i64.reinterpret_f64
    i64.eqz
    nop
    f32.convert_i32_s
    i32.reinterpret_f32
    f32.convert_i32_s
    f32.nearest
    i32.trunc_f32_u
    i32.ctz
    f64.convert_i32_s
    f64.sqrt
    local.tee 1
    f64.nearest
    i32.trunc_f64_u
    nop
    i64.extend_i32_s
    f64.convert_i64_s
    f64.sqrt
    i64.reinterpret_f64
    global.set $global_369666985
)

)