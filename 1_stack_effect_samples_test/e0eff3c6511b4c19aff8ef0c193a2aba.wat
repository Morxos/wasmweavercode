(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1614527258 (mut i64) (i64.const 2129934344694361736))
(func $run (export "run")
    (local i32 f64)
    (local $temp i32)
    local.get 0
    f32.convert_i32_s
    i32.reinterpret_f32
    i32.clz
    i64.extend_i32_s
    i64.eqz
    f32.convert_i32_s
    f32.neg
    ;;INSPECT
    f32.abs
    f32.trunc
    i64.trunc_f32_u
    i64.popcnt
    i64.ctz
    f64.convert_i64_u
    local.tee 1
    f64.sqrt
    f64.nearest
    i64.trunc_f64_s
    f64.convert_i64_s
    f64.floor
    i64.trunc_f64_s
    i64.extend32_s
    i64.clz
    f64.convert_i64_s
    f64.trunc
    f64.sqrt
    f64.sqrt
    f64.sqrt
    i64.reinterpret_f64
    global.set $global_1614527258
)

)