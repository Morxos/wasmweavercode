(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2922238827 (mut f32) (f32.const -3.366779371040801e+18))
(global $global_1401032662 (mut i64) (i64.const -2686655483705632385))
(func $run (export "run")
    (local i64)
    (local $temp i32)
    (f32.const -1.5130621402383647e+19)
    f32.neg
    f64.promote_f32
    f64.floor
    f64.floor
    i64.reinterpret_f64
    local.tee 0
    f64.convert_i64_s
    f64.floor
    f64.sqrt
    f64.floor
    f64.sqrt
    f32.demote_f64
    i32.trunc_f32_u
    f32.reinterpret_i32
    global.set $global_2922238827
    local.get 0
    global.set $global_1401032662
    (i32.const 348895009)
    f32.convert_i32_u
    global.set $global_2922238827
    (i32.const -8014146)
    f32.reinterpret_i32
    f32.floor
    ;;INSPECT
    f32.floor
    global.set $global_2922238827
)

)