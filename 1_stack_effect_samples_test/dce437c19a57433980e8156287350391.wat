(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_4277545119 (mut i32) (i32.const 637054124))
(func $run (export "run")
    (local i64 i64 f32)
    (local $temp i32)
    local.get 0
    f64.reinterpret_i64
    f64.trunc
    i64.reinterpret_f64
    f64.convert_i64_s
    f64.trunc
    i64.trunc_f64_u
    i64.extend32_s
    ;;INSPECT
    i64.popcnt
    i64.ctz
    local.tee 1
    i64.clz
    i64.clz
    i64.eqz
    global.set $global_4277545119
    local.get 0
    i64.popcnt
    i64.popcnt
    f64.convert_i64_s
    f64.nearest
    i64.trunc_f64_s
    (f32.const -5.3881706640147805e+35)
    f32.neg
    local.tee 2
    i32.reinterpret_f32
    (i32.const -1844977856)
    i32.div_s
    f32.reinterpret_i32
    drop
    i64.popcnt
    i64.eqz
    f32.convert_i32_u
    drop
)

)