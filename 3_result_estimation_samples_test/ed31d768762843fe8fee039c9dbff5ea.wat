(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(global $global_2335986010 (mut f32) (f32.const 8.058661018819101e+18))
(func $run (export "run") (result i64)
    (local $temp i32)
    (i32.const 1955799232)
    f32.reinterpret_i32
    f32.ceil
    f32.floor
    global.set $global_2335986010
    (f32.const -2.7084796211385154e-11)
    i64.trunc_f32_s
)

)