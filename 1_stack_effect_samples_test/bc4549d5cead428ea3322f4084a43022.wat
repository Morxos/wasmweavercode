(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1575406104 f64 (f64.const 4.5399632429897523e+18))
(func $run (export "run")
    (local i64 i32)
    (local $temp i32)
    local.get 0
    f32.convert_i64_u
    global.get $global_1575406104
    local.get 0
    ;;INSPECT
    i64.extend16_s
    i64.extend16_s
    i64.extend16_s
    i64.eqz
    i32.clz
    i32.extend8_s
    f64.convert_i32_s
    f64.lt
    f32.reinterpret_i32
    f32.trunc
    i64.trunc_f32_u
    f32.convert_i64_s
    f32.sqrt
    f32.eq
    f32.reinterpret_i32
    i64.trunc_f32_u
    i32.wrap_i64
    local.set 1
)

)