(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_4084712822 (mut i32) (i32.const 1320428171))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    ;;FLAG_0
    global.get $global_4084712822
    (f32.const -1.4725312554205184e+17)
    drop
    global.set $global_4084712822
    (f64.const 1.0775927375273102e+286)
    f64.trunc
    i64.reinterpret_f64
    (f32.const 1.1839036124111046e-34)
    i32.trunc_f32_u
    i32.popcnt
    i64.extend_i32_s
    i64.mul
    f32.convert_i64_u
    local.set 0
    br 0
)

)