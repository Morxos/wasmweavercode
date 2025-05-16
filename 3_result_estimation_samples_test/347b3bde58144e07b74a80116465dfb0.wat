(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_547222008 (mut f32) (f32.const -2.7719449548035195e+18))
(func $run (export "run") (result f32)
    (local f32)
    (local $temp i32)
    (f32.const -8.288030616467096e+26)
    local.set 0
    (f64.const 677168555812585.0)
    f32.demote_f64
    global.set $global_547222008
    (i32.const 46518)
    f32.convert_i32_u
)

)