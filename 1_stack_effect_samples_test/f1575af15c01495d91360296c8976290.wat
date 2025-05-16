(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1182001277 (mut i32) (i32.const 1911031113))
(global $global_1410901185 (mut f32) (f32.const 7.205486175153291e+18))
(func $run (export "run")
    (local i32 f32)
    (local $temp i32)
    local.get 0
    local.get 0
    f32.convert_i32_u
    i32.reinterpret_f32
    i32.shr_s
    f32.convert_i32_u
    local.tee 1
    ;;INSPECT
    i32.reinterpret_f32
    i32.popcnt
    i32.ctz
    f32.reinterpret_i32
    i32.trunc_f32_u
    i32.popcnt
    global.set $global_1182001277
    local.get 0
    i32.extend16_s
    i64.extend_i32_s
    nop
    i64.ctz
    f64.convert_i64_s
    f64.sqrt
    f64.abs
    f64.sqrt
    i64.trunc_f64_s
    i32.wrap_i64
    i64.extend_i32_u
    drop
    (f32.const -624384964296704.0)
    f32.neg
    global.set $global_1410901185
    global.get $global_1182001277
    i32.eqz
    drop
)

)