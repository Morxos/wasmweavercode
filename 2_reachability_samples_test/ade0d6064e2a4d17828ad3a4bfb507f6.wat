(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_0
    (f32.const -1.5439949319073776e-10)
    nop
    nop
    f32.nearest
    f32.sqrt
    i32.trunc_f32_s
    (br_table 0)
    ;;FLAG_1
    br 0
)

)