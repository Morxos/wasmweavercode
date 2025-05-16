(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result i64)
    (local f32)
    (local $temp i32)
    nop
    nop
    (i32.const -38)
    nop
    f32.reinterpret_i32
    nop
    drop
    nop
    (i64.const 8)
    (f32.const -7.863138513250734e-21)
    f32.trunc
    local.set 0
)

)