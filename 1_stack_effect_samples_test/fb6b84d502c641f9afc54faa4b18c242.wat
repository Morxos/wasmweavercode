(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3708314161 (mut i64) (i64.const 4710274774847829075))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    (i32.const 924520405)
    local.tee 0
    local.get 0
    i32.lt_u
    i32.extend8_s
    f32.reinterpret_i32
    (f32.const 5.391264752897648e-23)
    i32.trunc_f32_s
    i32.clz
    i32.extend8_s
    i32.clz
    i32.eqz
    f64.convert_i32_s
    i64.trunc_f64_s
    i64.eqz
    f32.reinterpret_i32
    i32.reinterpret_f32
    ;;INSPECT
    i32.extend8_s
    f32.reinterpret_i32
    f32.mul
    i32.reinterpret_f32
    i32.clz
    f32.reinterpret_i32
    (i32.const -9)
    i32.clz
    i32.clz
    i64.extend_i32_u
    i64.eqz
    f32.convert_i32_u
    f32.mul
    i32.reinterpret_f32
    f32.reinterpret_i32
    i32.reinterpret_f32
    i64.extend_i32_u
    i64.clz
    global.set $global_3708314161
)

)