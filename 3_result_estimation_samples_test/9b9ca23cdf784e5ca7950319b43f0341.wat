(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(global $global_3254137076 (mut f32) (f32.const 5.317013381796856e+18))
(func $run (export "run") (result i64)
    (local $temp i32)
    (i64.const -430280)
    f64.convert_i64_s
    i64.reinterpret_f64
    f32.convert_i64_u
    global.set $global_3254137076
    global.get $global_3254137076
    f32.sqrt
    f32.sqrt
    i64.trunc_f32_u
    f64.reinterpret_i64
    i64.trunc_f64_s
)

)