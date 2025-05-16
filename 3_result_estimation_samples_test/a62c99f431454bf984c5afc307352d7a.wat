(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result f32)
    (local i64 f64)
    (local $temp i32)
    nop
    (i32.const -1)
    drop
    local.get 0
    i32.wrap_i64
    drop
    (i32.const -36)
    nop
    drop
    (i32.const -243131392)
    f32.reinterpret_i32
    f32.abs
    f64.promote_f32
    local.set 1
    (f32.const 158043.09375)
    nop
)

)