(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_3331050207 (mut f32) (f32.const 4.3465676515694346e+18))
(func $run (export "run") (result f64)
    (local $temp i32)
    nop
    (i32.const -24)
    drop
    (f64.const 1.9095257917853006e-219)
    (f64.const 3.5240982462853927e+277)
    f64.gt
    (f32.const -1.5871389542952181e-31)
    global.set $global_3331050207
    f64.convert_i32_s
    f64.abs
)

)