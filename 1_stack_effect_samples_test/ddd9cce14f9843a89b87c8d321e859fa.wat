(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1976822244 i64 (i64.const -7819501615157005397))
(global $global_938664632 (mut i64) (i64.const -1823014956744959472))
(func $run (export "run")
    (local i32 f64)
    (local $temp i32)
    local.get 0
    f64.convert_i32_s
    f64.trunc
    f64.trunc
    local.get 0
    (f32.const -200214.1875)
    f32.neg
    f32.sqrt
    f32.ceil
    i64.trunc_f32_s
    i64.eqz
    i32.shr_s
    f64.convert_i32_s
    f64.trunc
    f64.neg
    i64.reinterpret_f64
    i64.clz
    global.get $global_1976822244
    f64.convert_i64_s
    f64.abs
    f64.floor
    f64.nearest
    f64.floor
    f64.nearest
    f64.nearest
    local.set 1
    i64.popcnt
    ;;INSPECT
    i64.clz
    i64.clz
    i64.clz
    i64.clz
    f64.reinterpret_i64
    f64.mul
    i64.trunc_f64_s
    f64.convert_i64_s
    f64.floor
    i64.trunc_f64_u
    i64.extend8_s
    i64.clz
    global.set $global_938664632
)

)