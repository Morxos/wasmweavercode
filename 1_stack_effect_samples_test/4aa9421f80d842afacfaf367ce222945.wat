(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1696462178 (mut f32) (f32.const 7.104364090746733e+18))
(func $run (export "run")
    (local f64 f64 f32)
    (local $temp i32)
    local.get 0
    f64.sqrt
    i64.trunc_f64_u
    i64.popcnt
    i64.ctz
    i32.wrap_i64
    f32.convert_i32_s
    f32.sqrt
    f32.abs
    f32.ceil
    f32.ceil
    ;;INSPECT
    i64.trunc_f32_u
    i64.eqz
    f64.convert_i32_s
    f64.trunc
    f64.trunc
    f64.trunc
    f64.sqrt
    f64.trunc
    local.tee 1
    f64.sqrt
    f64.neg
    global.get $global_1696462178
    local.set 2
    i64.trunc_f64_s
    i64.clz
    f64.reinterpret_i64
    f64.abs
    f32.demote_f64
    i32.reinterpret_f32
    f32.convert_i32_u
    f32.floor
    global.set $global_1696462178
)

)