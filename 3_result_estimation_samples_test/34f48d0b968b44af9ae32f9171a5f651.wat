(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_1608525542 (mut i32) (i32.const 540722125))
(func $run (export "run") (result i32)
    (local $temp i32)
    (f32.const -1.8133983091265204e-29)
    i32.reinterpret_f32
    i32.eqz
    f32.reinterpret_i32
    (i32.const 2081842794)
    global.set $global_1608525542
    f32.trunc
    i32.trunc_f32_s
    nop
)

)