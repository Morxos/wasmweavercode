(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_0
    (i32.const 972)
    (i32.const -8926)
    i32.le_s
    (i32.const -98)
    f32.reinterpret_i32
    f32.trunc
    (f32.const -4.661431785857789e+31)
    f32.ceil
    f32.le
    i32.xor
    (br_table 0)
    ;;FLAG_1
    br 0
)

)