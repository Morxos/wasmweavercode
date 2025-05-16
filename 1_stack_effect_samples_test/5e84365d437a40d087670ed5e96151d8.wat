(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_4043514438 (mut i64) (i64.const 4474394734226355960))
(func $run (export "run")
    (local i64)
    (local $temp i32)
    (f32.const 0.0008168531348928809)
    f32.trunc
    ;;INSPECT
    i64.trunc_f32_u
    i64.extend32_s
    i64.popcnt
    f64.convert_i64_u
    i64.reinterpret_f64
    f64.convert_i64_u
    i64.trunc_f64_u
    i64.eqz
    i64.extend_i32_s
    i64.ctz
    i64.extend32_s
    i64.clz
    i64.eqz
    i32.extend8_s
    f32.reinterpret_i32
    f32.ceil
    f32.ceil
    local.get 0
    (f32.const 2.635590088746298e+24)
    f64.promote_f32
    drop
    (f32.const -2.0656302441873193e-39)
    i32.trunc_f32_s
    f64.convert_i32_s
    i64.trunc_f64_s
    local.set 0
    local.set 0
    i64.trunc_f32_s
    i64.extend32_s
    global.set $global_4043514438
)

)