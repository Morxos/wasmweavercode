(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(global $global_3725527359 (mut f32) (f32.const 2.7046982738929254e+18))
(global $global_4238285405 (mut i64) (i64.const 2774936939972004440))
(func $run (export "run") (result i64)
    (local i32)
    (local $temp i32)
    (i32.const 358368999)
    f32.convert_i32_u
    f32.trunc
    global.set $global_3725527359
    local.get 0
    i32.eqz
    f32.reinterpret_i32
    (f64.const 6.395814242334004e-144)
    i64.reinterpret_f64
    global.set $global_4238285405
    global.get $global_3725527359
    f32.eq
    f32.convert_i32_s
    i64.trunc_f32_s
)

)