(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3541622921 (mut f32) (f32.const -7.885316413630448e+18))
(func $run (export "run")
    (local f64 f64 f32)
    (local $temp i32)
    local.get 0
    f64.nearest
    f32.demote_f64
    f32.neg
    i32.reinterpret_f32
    ;;INSPECT
    i32.eqz
    f32.convert_i32_s
    f64.promote_f32
    local.tee 1
    f64.trunc
    i64.reinterpret_f64
    (f32.const 1.7706693093752832e+16)
    f32.abs
    global.set $global_3541622921
    f32.convert_i64_s
    f32.trunc
    f32.sqrt
    f32.sqrt
    f32.sqrt
    f32.trunc
    f32.neg
    local.tee 2
    f32.ceil
    local.set 2
    local.get 0
    f64.trunc
    local.set 0
)

)