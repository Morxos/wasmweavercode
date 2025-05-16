(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(global $global_4128972578 (mut i32) (i32.const 1719513781))
(global $global_1830859500 (mut f32) (f32.const -2.9264175424130253e+18))
(func $run (export "run") (result i64)
    (local $temp i32)
    global.get $global_4128972578
    f32.convert_i32_s
    global.set $global_1830859500
    (i64.const 9)
    i64.extend32_s
)

)