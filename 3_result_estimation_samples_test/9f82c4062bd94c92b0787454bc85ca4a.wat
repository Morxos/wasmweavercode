(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_2944132686 (mut f64) (f64.const -6.980449225044304e+18))
(func $run (export "run") (result i32)
    (local $temp i32)
    nop
    (f32.const 2.0478148144320585e-05)
    drop
    (f32.const -1.7741736718265123e-22)
    f64.promote_f32
    global.set $global_2944132686
    (i32.const -99)
    (i32.const -814919182)
    i32.shl
)

)