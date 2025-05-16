(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    ;;FLAG_0
    (f32.const -4.0376650824259994e+18)
    i32.reinterpret_f32
    f64.convert_i32_u
    drop
    nop
    (i32.const 25796)
    i32.popcnt
    local.tee 0
    (br_table 0)
    ;;FLAG_1
    nop
    br 0
)

)