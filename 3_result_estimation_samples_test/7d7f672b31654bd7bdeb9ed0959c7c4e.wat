(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_1160454827 (mut i32) (i32.const -1090410719))
(func $run (export "run") (result f64)
    (local $temp i32)
    (i32.const 5914744)
    global.set $global_1160454827
    global.get $global_1160454827
    nop
    f64.convert_i32_u
    br 0
)

)