(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_656849609 (mut f64) (f64.const -2.0548444835227484e+18))
(func $run (export "run")
    (local f64 i32)
    (local $temp i32)
    local.get 0
    i64.reinterpret_f64
    (i64.const 233)
    ;;INSPECT
    f32.convert_i64_s
    f32.floor
    f32.sqrt
    i64.trunc_f32_u
    i64.eqz
    i64.extend_i32_s
    i64.popcnt
    i64.extend32_s
    i64.rotr
    f32.convert_i64_u
    f32.ceil
    f32.ceil
    f32.floor
    f32.abs
    i64.trunc_f32_u
    i64.clz
    i64.eqz
    f64.convert_i32_s
    i32.trunc_f64_u
    local.tee 1
    f64.convert_i32_s
    f64.abs
    global.set $global_656849609
    global.get $global_656849609
    f32.demote_f64
    f32.abs
    i64.trunc_f32_u
    f64.reinterpret_i64
    local.set 0
)

)