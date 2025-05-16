(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_4125802663 (mut i64) (i64.const 5942328355084922842))
(func $run (export "run")
    (local i64 f64 f32)
    (local $temp i32)
    local.get 0
    i64.popcnt
    i32.wrap_i64
    ;;INSPECT
    f64.convert_i32_s
    local.tee 1
    f64.neg
    f64.nearest
    i64.trunc_f64_u
    i64.extend16_s
    i64.eqz
    f32.reinterpret_i32
    (f32.const -0.023421620950102806)
    f32.copysign
    f32.abs
    local.tee 2
    f32.ceil
    i64.trunc_f32_u
    f64.convert_i64_s
    f64.sqrt
    i64.reinterpret_f64
    global.set $global_4125802663
)

)