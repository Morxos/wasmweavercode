(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2256808300 (mut i64) (i64.const 5784122958820604938))
(func $run (export "run")
    (local f64 i32)
    (local $temp i32)
    local.get 0
    f64.trunc
    i64.reinterpret_f64
    f64.convert_i64_s
    i64.trunc_f64_u
    i64.clz
    i32.wrap_i64
    local.tee 1
    ;;INSPECT
    f32.convert_i32_s
    i64.trunc_f32_u
    f64.convert_i64_s
    f64.nearest
    i64.trunc_f64_s
    f64.convert_i64_s
    i64.trunc_f64_s
    local.get 0
    f64.abs
    i64.trunc_f64_s
    i64.clz
    i64.div_u
    f64.convert_i64_s
    i64.reinterpret_f64
    global.set $global_2256808300
)

)