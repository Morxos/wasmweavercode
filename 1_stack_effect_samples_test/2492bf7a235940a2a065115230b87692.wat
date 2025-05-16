(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_117670393 (mut f32) (f32.const -4.016736909383434e+17))
(func $run (export "run")
    (local f32 f32)
    (local $temp i32)
    local.get 0
    i32.trunc_f32_u
    i32.eqz
    f32.reinterpret_i32
    ;;INSPECT
    i64.trunc_f32_u
    f64.reinterpret_i64
    f64.nearest
    i64.reinterpret_f64
    i64.extend32_s
    f64.convert_i64_u
    i32.trunc_f64_u
    f32.reinterpret_i32
    i64.trunc_f32_u
    f32.convert_i64_s
    i64.trunc_f32_u
    i64.clz
    i32.wrap_i64
    f32.convert_i32_u
    f32.sqrt
    f32.abs
    f32.nearest
    global.set $global_117670393
    (f32.const -18596642.0)
    local.tee 1
    global.get $global_117670393
    local.set 0
    local.set 0
)

)