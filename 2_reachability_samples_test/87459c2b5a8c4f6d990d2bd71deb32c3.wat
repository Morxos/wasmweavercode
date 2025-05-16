(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f64 f64)
    (local $temp i32)
    ;;FLAG_0
    local.get 0
    i32.trunc_f64_s
    (f32.const -4.1434977595003954e-26)
    i32.reinterpret_f32
    f64.convert_i32_u
    f64.floor
    local.tee 1
    i32.trunc_f64_u
    i32.shr_s
    (br_table 0)
    ;;FLAG_1
    return
)

)