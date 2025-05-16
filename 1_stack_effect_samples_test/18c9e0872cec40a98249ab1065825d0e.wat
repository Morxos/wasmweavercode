(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1931925467 (mut f64) (f64.const -6.430179814174556e+18))
(global $global_3133273184 (mut i32) (i32.const 367198907))
(global $global_4119608620 (mut f32) (f32.const 1.970070025154855e+18))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    local.get 0
    i32.extend8_s
    f32.reinterpret_i32
    i64.trunc_f32_u
    f64.convert_i64_u
    i64.reinterpret_f64
    i64.eqz
    local.get 0
    i32.shr_s
    i32.clz
    i64.extend_i32_s
    i64.ctz
    f64.reinterpret_i64
    global.set $global_1931925467
    local.get 0
    i32.eqz
    ;;INSPECT
    global.get $global_1931925467
    f64.trunc
    f64.sqrt
    f64.sqrt
    f64.nearest
    i32.trunc_f64_u
    i32.shr_s
    i32.eqz
    i32.eqz
    f32.convert_i32_s
    f32.abs
    i32.reinterpret_f32
    global.set $global_3133273184
    global.get $global_1931925467
    f32.demote_f64
    global.set $global_4119608620
)

)