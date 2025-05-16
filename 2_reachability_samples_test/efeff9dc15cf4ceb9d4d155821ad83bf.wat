(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_0
    (f32.const -2.4563110682386752e-23)
    (i64.const 1)
    drop
    nop
    i32.reinterpret_f32
    f32.convert_i32_s
    (f32.const -32.06844711303711)
    f32.le
    i32.popcnt
    (br_table 0)
    ;;FLAG_1
    (i32.const 6102586)
    i32.extend8_s
    (br_table 0)
    ;;FLAG_2
    (i32.const 95955645)
    (br_table 0)
    ;;FLAG_3
    br 0
)

)