(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_3308243099 (mut f64) (f64.const -5.237121469836188e+18))
(func $run (export "run") (result f32)
    (local f32 f64)
    (local $temp i32)
    global.get $global_3308243099
    f64.floor
    local.get 0
    f32.neg
    f32.neg
    f32.ceil
    local.set 0
    local.set 1
    (i32.const -161048)
    f32.convert_i32_u
    return
)

)