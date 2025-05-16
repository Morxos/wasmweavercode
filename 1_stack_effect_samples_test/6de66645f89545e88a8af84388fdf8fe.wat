(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3153590711 (mut f64) (f64.const -4.19952280519577e+18))
(global $global_1252944726 (mut f32) (f32.const -7.408431282629116e+18))
(global $global_881097968 (mut i64) (i64.const -3235341628818934975))
(func $run (export "run")
    (local f32 f32 f32)
    (local $temp i32)
    local.get 0
    i64.trunc_f32_u
    i64.popcnt
    i64.ctz
    i64.popcnt
    i64.popcnt
    i64.extend32_s
    f64.reinterpret_i64
    f32.demote_f64
    local.tee 1
    f32.nearest
    f32.ceil
    i32.reinterpret_f32
    i64.extend_i32_s
    ;;INSPECT
    drop
    global.get $global_3153590711
    f64.abs
    i64.reinterpret_f64
    f32.convert_i64_u
    f32.sqrt
    f32.sqrt
    i32.trunc_f32_u
    i32.clz
    i32.extend8_s
    i32.clz
    i32.eqz
    i32.clz
    f64.convert_i32_s
    (f32.const 8063740.5)
    local.tee 2
    global.set $global_1252944726
    f64.abs
    i64.trunc_f64_u
    i64.popcnt
    f64.convert_i64_s
    i64.trunc_f64_u
    global.set $global_881097968
)

)