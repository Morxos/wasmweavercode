(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    ;;FLAG_0
    (i64.const -4235)
    i64.eqz
    i64.extend_i32_s
    local.get 0
    i32.reinterpret_f32
    i32.ctz
    local.get 0
    f32.floor
    (f32.const 6.686948174569035e-28)
    f32.gt
    i32.shr_u
    f64.convert_i32_u
    f64.trunc
    i64.reinterpret_f64
    drop
    drop
    return
)

)