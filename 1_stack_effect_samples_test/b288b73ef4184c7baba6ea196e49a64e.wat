(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3115998302 (mut f32) (f32.const 3.5709551069060137e+18))
(func $run (export "run")
    (local $temp i32)
    nop
    (i32.const 350186)
    f32.convert_i32_u
    f32.sqrt
    i64.trunc_f32_u
    f64.convert_i64_s
    i32.trunc_f64_u
    f32.reinterpret_i32
    ;;INSPECT
    f32.abs
    f32.abs
    f32.trunc
    f64.promote_f32
    f64.trunc
    f64.abs
    i64.trunc_f64_s
    f32.convert_i64_u
    f32.abs
    i32.reinterpret_f32
    f32.reinterpret_i32
    i64.trunc_f32_u
    i64.ctz
    i64.eqz
    i32.extend16_s
    f32.convert_i32_s
    i64.trunc_f32_u
    i64.clz
    drop
    (f32.const 845740638208.0)
    f32.floor
    global.set $global_3115998302
)

)