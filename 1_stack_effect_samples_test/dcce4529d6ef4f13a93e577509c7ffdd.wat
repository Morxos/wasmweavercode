(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3746626407 (mut i64) (i64.const 1835286348416735740))
(func $run (export "run")
    (local f32 i64)
    (local $temp i32)
    local.get 0
    f32.neg
    f32.ceil
    f32.abs
    f32.trunc
    i64.trunc_f32_u
    i64.ctz
    f64.convert_i64_s
    f64.nearest
    f64.sqrt
    f64.sqrt
    i32.trunc_f64_u
    f64.convert_i32_s
    f64.trunc
    i64.reinterpret_f64
    local.tee 1
    i64.eqz
    ;;INSPECT
    f32.reinterpret_i32
    i32.reinterpret_f32
    i32.clz
    (i32.const 1089161933)
    i32.div_s
    i32.clz
    i32.clz
    i32.extend8_s
    i32.clz
    f64.convert_i32_u
    i64.trunc_f64_s
    global.set $global_3746626407
)

)