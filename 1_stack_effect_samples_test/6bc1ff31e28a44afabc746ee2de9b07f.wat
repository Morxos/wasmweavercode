(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_304917413 (mut i32) (i32.const -990842958))
(func $run (export "run")
    (local f32 i32)
    (local $temp i32)
    local.get 0
    f32.ceil
    i32.reinterpret_f32
    ;;INSPECT
    f64.convert_i32_s
    i32.trunc_f64_u
    f32.convert_i32_s
    f32.ceil
    f32.sqrt
    i32.reinterpret_f32
    f64.convert_i32_s
    f64.sqrt
    f64.trunc
    f64.sqrt
    i64.trunc_f64_u
    f64.convert_i64_s
    i64.trunc_f64_s
    i64.eqz
    f32.convert_i32_s
    i64.trunc_f32_u
    f64.convert_i64_u
    f32.demote_f64
    f32.trunc
    f32.ceil
    i32.reinterpret_f32
    local.tee 1
    i32.clz
    i32.clz
    i32.clz
    global.set $global_304917413
)

)