(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_1159821793 (mut f32) (f32.const 5.136104686364918e+18))
(global $global_1878441994 (mut f64) (f64.const 5.843337661309843e+18))
(func $run (export "run") (result i32)
    (local $temp i32)
    (i32.const 72)
    f32.convert_i32_s
    global.set $global_1159821793
    (f64.const 4.583749288997054e-40)
    f64.floor
    f64.floor
    global.set $global_1878441994
    (i32.const -51415886)
)

)