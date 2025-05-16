(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_1327606570 (mut f32) (f32.const 3.7511175775400755e+17))
(func $run (export "run") (result f32)
    (local i64)
    (local $temp i32)
    (i32.const -71086283)
    f32.convert_i32_u
    (i64.const 964)
    local.set 0
    global.set $global_1327606570
    (f32.const -6.665651254682714e+18)
    i32.reinterpret_f32
    f32.reinterpret_i32
)

)