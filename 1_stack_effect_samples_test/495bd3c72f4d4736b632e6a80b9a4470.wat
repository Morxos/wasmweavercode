(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3151087765 (mut i64) (i64.const -7282143217627880436))
(func $run (export "run")
    (local i64 i64)
    (local $temp i32)
    local.get 0
    i64.clz
    local.tee 1
    f64.convert_i64_s
    f64.floor
    i64.trunc_f64_s
    f32.convert_i64_s
    (i32.const -24942406)
    i32.eqz
    ;;INSPECT
    f32.convert_i32_s
    f32.max
    f32.trunc
    f32.sqrt
    f32.ceil
    i64.trunc_f32_u
    f64.convert_i64_s
    f64.sqrt
    i64.reinterpret_f64
    global.set $global_3151087765
)

)