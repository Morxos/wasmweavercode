(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_395505395 (mut i32) (i32.const 622568954))
(func $run (export "run")
    (local f32 f64)
    (local $temp i32)
    ;;FLAG_0
    local.get 0
    drop
    local.get 0
    i32.trunc_f32_u
    global.set $global_395505395
    (i32.const -933022)
    f64.convert_i32_u
    local.tee 1
    f64.trunc
    f32.demote_f64
    i32.reinterpret_f32
    drop
    br 0
)

)