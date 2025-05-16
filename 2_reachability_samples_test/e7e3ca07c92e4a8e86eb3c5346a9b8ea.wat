(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f64)
    (local $temp i32)
    ;;FLAG_0
    (f64.const 7.099974656328032e-145)
    local.get 0
    drop
    i64.trunc_f64_u
    f32.convert_i64_u
    i32.trunc_f32_u
    i32.ctz
    drop
    br 0
)

)