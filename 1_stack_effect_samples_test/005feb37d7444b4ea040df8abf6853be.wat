(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3489738566 (mut f32) (f32.const 6.239912106070639e+18))
(func $run (export "run")
    (local f32 i32)
    (local $temp i32)
    (f32.const -8.380553880452004e-20)
    f32.ceil
    f32.trunc
    local.tee 0
    f32.ceil
    f32.abs
    f32.trunc
    f32.ceil
    f32.abs
    i32.trunc_f32_u
    i32.extend8_s
    f64.convert_i32_s
    f64.trunc
    f64.nearest
    i64.trunc_f64_u
    i64.eqz
    i64.extend_i32_u
    f32.convert_i64_s
    i32.reinterpret_f32
    local.tee 1
    i32.clz
    i32.clz
    ;;INSPECT
    local.get 0
    i32.trunc_f32_u
    i32.ge_u
    i32.clz
    f32.convert_i32_u
    i32.reinterpret_f32
    f32.convert_i32_u
    i32.trunc_f32_u
    f64.convert_i32_s
    i32.trunc_f64_u
    f32.convert_i32_u
    global.set $global_3489738566
)

)