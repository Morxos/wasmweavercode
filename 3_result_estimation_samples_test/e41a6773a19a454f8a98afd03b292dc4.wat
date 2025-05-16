(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_538576185 (mut f32) (f32.const -6.873925145262555e+18))
(func $run (export "run") (result f64)
    (local f32)
    (local $temp i32)
    local.get 0
    (i32.const 6700)
    f32.convert_i32_u
    f32.min
    local.get 0
    local.set 0
    global.set $global_538576185
    (f64.const 6.203024700649018e-54)
    br 0
)

)