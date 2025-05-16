(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_3790910042 (mut f32) (f32.const 3.8450680286349885e+18))
(func $run (export "run") (result i32)
    (local $temp i32)
    nop
    nop
    (i32.const 90)
    f32.convert_i32_s
    f32.abs
    global.set $global_3790910042
    (i64.const 4377818)
    f32.convert_i64_s
    i32.reinterpret_f32
    return
)

)