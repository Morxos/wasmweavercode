(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3822719898 (mut i64) (i64.const -3726618287727034772))
(func $run (export "run")
    (local i64 i64 f32)
    (local $temp i32)
    local.get 0
    f64.reinterpret_i64
    i64.reinterpret_f64
    f64.convert_i64_s
    i64.reinterpret_f64
    i64.extend32_s
    i64.eqz
    i64.extend_i32_s
    i64.eqz
    ;;INSPECT
    i32.clz
    (i64.const 98)
    global.set $global_3822719898
    i32.popcnt
    i64.extend_i32_s
    i64.extend32_s
    local.tee 1
    global.set $global_3822719898
    local.get 0
    i64.extend32_s
    (f32.const -31501760593920.0)
    f32.nearest
    f32.nearest
    f32.neg
    local.set 2
    i64.clz
    i64.popcnt
    i64.popcnt
    i32.wrap_i64
    i32.clz
    i32.clz
    i32.clz
    i32.clz
    i32.clz
    i32.clz
    i32.clz
    i32.clz
    drop
)

)