(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_536986450 f32 (f32.const -3.688774374891979e+18))
(global $global_2920988149 (mut f64) (f64.const -6.503945149844972e+17))
(func $run (export "run") (result i32)
    (local $temp i32)
    global.get $global_536986450
    f32.nearest
    f64.promote_f32
    global.set $global_2920988149
    (f32.const 3.1521926652364094e+21)
    f32.floor
    f32.abs
    f32.ceil
    i32.reinterpret_f32
)

)