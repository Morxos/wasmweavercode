(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_3071228825 (mut f64) (f64.const -6.540151157965498e+18))
(func $run (export "run") (result f64)
    (local $temp i32)
    (f32.const 2.2767119407630086e-30)
    f32.nearest
    f64.promote_f32
    global.set $global_3071228825
    nop
    global.get $global_3071228825
)

)