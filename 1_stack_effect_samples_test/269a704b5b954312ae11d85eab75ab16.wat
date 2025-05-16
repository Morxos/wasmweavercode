(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3139171258 (mut i64) (i64.const -6631616790114866186))
(func $run (export "run")
    (local f64 f32)
    (local $temp i32)
    (f32.const -2.912461757659912)
    local.get 0
    i64.trunc_f64_u
    f64.convert_i64_s
    local.get 0
    f64.nearest
    f64.trunc
    f64.le
    f64.convert_i32_s
    f32.demote_f64
    local.tee 1
    f32.min
    i32.reinterpret_f32
    i32.eqz
    f64.convert_i32_s
    ;;INSPECT
    f64.nearest
    f64.trunc
    i64.reinterpret_f64
    i64.popcnt
    i64.ctz
    f64.convert_i64_s
    i64.reinterpret_f64
    global.set $global_3139171258
)

)