(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3177807023 (mut f32) (f32.const 7.907019123895304e+18))
(func $run (export "run")
    (local f64 i32)
    (local $temp i32)
    local.get 0
    f64.neg
    f64.sqrt
    f64.trunc
    f64.neg
    f64.abs
    (f32.const -7.694184580295517e-17)
    (f32.const 8.599124859940766e+18)
    f32.lt
    f32.convert_i32_s
    i32.reinterpret_f32
    local.tee 1
    drop
    f64.nearest
    f64.nearest
    (i32.const 18597768)
    i32.extend8_s
    f32.reinterpret_i32
    global.set $global_3177807023
    f64.nearest
    f64.nearest
    i64.reinterpret_f64
    i64.eqz
    i32.clz
    i32.clz
    i32.clz
    ;;INSPECT
    f32.convert_i32_s
    f32.floor
    global.set $global_3177807023
)

)