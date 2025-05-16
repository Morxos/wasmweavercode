(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2516170779 (mut f64) (f64.const 1.0573351577674138e+18))
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_0
    (f32.const -0.0005594458198174834)
    f32.neg
    f32.nearest
    f64.promote_f32
    f64.neg
    f64.abs
    global.set $global_2516170779
    br 0
)

)