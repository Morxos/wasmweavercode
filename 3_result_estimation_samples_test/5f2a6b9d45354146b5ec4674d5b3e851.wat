(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_849472809 (mut i32) (i32.const 896090732))
(func $run (export "run") (result f64)
    (local f32)
    (local $temp i32)
    (f32.const 2.985572943384196e-13)
    local.set 0
    global.get $global_849472809
    i32.popcnt
    f64.convert_i32_u
)

)