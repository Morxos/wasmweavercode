(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    ;;FLAG_0
    nop
    (f32.const 2.487214928894414e+20)
    local.tee 0
    i32.reinterpret_f32
    i64.extend_i32_u
    f64.convert_i64_s
    i64.trunc_f64_s
    f64.reinterpret_i64
    f32.demote_f64
    drop
    br 0
)

)