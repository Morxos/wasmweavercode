(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_0
    (f32.const 5.9521177151433455e+34)
    f32.floor
    i32.reinterpret_f32
    (f32.const 3.932820592819418e-32)
    drop
    (br_table 0)
    ;;FLAG_1
    br 0
)

)