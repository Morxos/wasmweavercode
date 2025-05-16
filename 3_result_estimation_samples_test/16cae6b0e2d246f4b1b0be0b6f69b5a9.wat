(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_2628059042 (mut f32) (f32.const -8.644145463051682e+18))
(func $run (export "run") (result i32)
    (local f32)
    (local $temp i32)
    local.get 0
    f32.floor
    nop
    f32.neg
    f32.abs
    global.set $global_2628059042
    (f32.const 1.0061922694986752e-25)
    i32.trunc_f32_u
)

)