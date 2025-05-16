(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_1480213502 (mut i64) (i64.const 2805139299859951830))
(func $run (export "run") (result f64)
    (local $temp i32)
    (f64.const 2.9891860691343793e-204)
    drop
    (f32.const 4.042755174870208e-21)
    (i64.const -10)
    global.set $global_1480213502
    f32.trunc
    f64.promote_f32
)

)