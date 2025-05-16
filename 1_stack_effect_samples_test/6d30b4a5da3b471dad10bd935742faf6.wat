(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_299430067 (mut i64) (i64.const -4533730058143501300))
(func $run (export "run")
    (local i64 i32)
    (local $temp i32)
    local.get 0
    i64.eqz
    f32.convert_i32_s
    f32.neg
    f32.neg
    f32.sqrt
    i32.trunc_f32_s
    local.tee 1
    i32.clz
    f32.convert_i32_u
    f32.sqrt
    f32.floor
    f32.ceil
    i64.trunc_f32_s
    f64.convert_i64_u
    f64.sqrt
    f64.sqrt
    i64.trunc_f64_u
    f64.convert_i64_s
    f64.neg
    ;;INSPECT
    i64.reinterpret_f64
    (i32.const -32335)
    i64.extend_i32_u
    global.set $global_299430067
    drop
    global.get $global_299430067
    global.set $global_299430067
)

)