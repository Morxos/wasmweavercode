(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_2006944816 (mut f32) (f32.const -2.1433661143929324e+18))
(func $run (export "run") (result f64)
    (local f32)
    (local $temp i32)
    global.get $global_2006944816
    local.get 0
    f32.min
    f64.promote_f32
    f64.neg
    return
)

)