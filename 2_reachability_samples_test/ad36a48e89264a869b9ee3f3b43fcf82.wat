(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f64)
    (local $temp i32)
    ;;FLAG_0
    nop
    (f32.const -1.1085484402428847e-05)
    f32.floor
    i64.trunc_f32_s
    f64.convert_i64_u
    local.set 0
    br 0
)

)