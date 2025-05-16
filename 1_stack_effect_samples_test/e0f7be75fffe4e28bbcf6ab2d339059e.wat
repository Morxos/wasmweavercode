(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2883768563 (mut f64) (f64.const -1.8780397131233853e+18))
(func $run (export "run")
    (local i32 i64 f64)
    (local $temp i32)
    local.get 0
    f32.convert_i32_u
    i64.trunc_f32_u
    f32.convert_i64_s
    i32.reinterpret_f32
    f32.convert_i32_s
    i64.trunc_f32_u
    ;;INSPECT
    i64.ctz
    f64.convert_i64_u
    global.set $global_2883768563
    (i64.const -3330)
    i32.wrap_i64
    i32.eqz
    f32.reinterpret_i32
    f32.trunc
    i32.trunc_f32_s
    f32.convert_i32_u
    i64.trunc_f32_u
    i64.extend32_s
    local.tee 1
    f32.convert_i64_u
    f32.neg
    i64.trunc_f32_u
    f64.reinterpret_i64
    f64.trunc
    global.set $global_2883768563
    global.get $global_2883768563
    local.tee 2
    f64.sqrt
    f64.sqrt
    f32.demote_f64
    i64.trunc_f32_u
    i64.eqz
    f64.convert_i32_u
    drop
)

)