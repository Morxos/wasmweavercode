(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2863184138 (mut f64) (f64.const -1.9159457855079383e+18))
(global $global_216633345 (mut f32) (f32.const 2.9129270844960276e+18))
(func $run (export "run")
    (local f64 i64 f64)
    (local $temp i32)
    local.get 0
    f64.sqrt
    f32.demote_f64
    i32.reinterpret_f32
    f32.convert_i32_u
    local.get 0
    i64.reinterpret_f64
    i64.clz
    i64.popcnt
    i64.eqz
    i32.ctz
    i32.extend8_s
    i32.extend8_s
    f32.convert_i32_u
    ;;INSPECT
    f32.sqrt
    i64.trunc_f32_u
    i64.popcnt
    f32.convert_i64_u
    i64.trunc_f32_u
    local.tee 1
    i32.wrap_i64
    f64.convert_i32_s
    f64.trunc
    f64.nearest
    local.tee 2
    f64.sqrt
    f64.trunc
    i64.reinterpret_f64
    f64.convert_i64_s
    f64.sqrt
    f64.sqrt
    global.set $global_2863184138
    f32.trunc
    i32.reinterpret_f32
    f32.convert_i32_u
    global.set $global_216633345
)

)