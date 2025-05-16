(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2443096299 f32 (f32.const 7.900148275733332e+18))
(func $run (export "run")
    (local i32 f32)
    (local $temp i32)
    local.get 0
    local.get 0
    f64.convert_i32_s
    i64.reinterpret_f64
    i64.eqz
    i32.shr_s
    i32.ctz
    i64.extend_i32_s
    i64.clz
    i64.popcnt
    f64.convert_i64_s
    f32.demote_f64
    global.get $global_2443096299
    f32.max
    global.get $global_2443096299
    f32.lt
    local.get 0
    local.set 0
    f32.convert_i32_s
    f32.trunc
    f32.trunc
    f32.sqrt
    f32.trunc
    f32.trunc
    ;;INSPECT
    f32.trunc
    i64.trunc_f32_u
    i32.wrap_i64
    f32.reinterpret_i32
    f32.sqrt
    f32.trunc
    f32.sqrt
    f32.trunc
    local.set 1
)

)