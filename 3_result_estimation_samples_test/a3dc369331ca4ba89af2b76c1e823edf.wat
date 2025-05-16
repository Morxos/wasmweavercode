(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(global $global_1665950518 (mut f32) (f32.const 5.025774192075735e+18))
(func $run (export "run") (result i64)
    (local $temp i32)
    nop
    global.get $global_1665950518
    i64.trunc_f32_s
    nop
    f32.convert_i64_s
    i64.trunc_f32_s
)

)