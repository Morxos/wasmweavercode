(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1588270201 (mut i64) (i64.const 3072307581368001529))
(func $run (export "run")
    (local i64 i32)
    (local $temp i32)
    local.get 0
    i64.eqz
    i64.extend_i32_s
    i64.eqz
    local.tee 1
    f32.convert_i32_u
    f32.sqrt
    i64.trunc_f32_u
    i64.eqz
    f32.convert_i32_u
    f32.abs
    i64.trunc_f32_u
    i64.eqz
    ;;INSPECT
    i32.extend16_s
    i32.eqz
    (f32.const -2.7014792363695824e-16)
    f32.abs
    f32.abs
    i32.reinterpret_f32
    i32.lt_s
    i32.extend8_s
    f64.convert_i32_s
    f64.trunc
    f64.sqrt
    i64.reinterpret_f64
    global.set $global_1588270201
)

)