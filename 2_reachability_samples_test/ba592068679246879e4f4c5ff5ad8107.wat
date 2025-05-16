(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2335218696 f32 (f32.const 6.471776980697088e+17))
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_0
    (f32.const -3.075965878451825e-06)
    global.get $global_2335218696
    f32.le
    f32.convert_i32_s
    i32.reinterpret_f32
    (br_table 0)
    ;;FLAG_1
    return
)

)