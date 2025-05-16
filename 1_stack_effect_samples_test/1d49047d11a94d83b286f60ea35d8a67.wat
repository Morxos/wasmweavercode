(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_23384340 (mut f32) (f32.const 8.590713046232465e+18))
(func $run (export "run")
    (local i64 i64 i64 f64)
    (local $temp i32)
    local.get 0
    i32.wrap_i64
    ;;INSPECT
    i32.clz
    i64.extend_i32_s
    f64.convert_i64_s
    f64.nearest
    f64.trunc
    i64.trunc_f64_u
    i64.eqz
    local.get 0
    local.tee 1
    i64.eqz
    i32.div_u
    f32.convert_i32_s
    i64.trunc_f32_u
    f64.reinterpret_i64
    i64.trunc_f64_u
    local.tee 2
    (f32.const 66343870464.0)
    global.set $global_23384340
    i32.wrap_i64
    f32.convert_i32_s
    f32.nearest
    f32.nearest
    i64.trunc_f32_u
    i32.wrap_i64
    f64.convert_i32_s
    f64.sqrt
    f64.abs
    local.set 3
)

)