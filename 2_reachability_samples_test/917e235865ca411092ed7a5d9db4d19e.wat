(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2631306259 (mut f32) (f32.const -8.781550331663221e+18))
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_0
    global.get $global_2631306259
    global.get $global_2631306259
    f32.eq
    i32.extend8_s
    f32.reinterpret_i32
    i32.reinterpret_f32
    (br_table 0)
    ;;FLAG_1
    (i32.const 2)
    f32.convert_i32_s
    global.get $global_2631306259
    f32.max
    (f32.const 103.50191497802734)
    f32.floor
    (f64.const 2.3144891695960853e+295)
    drop
    f32.gt
    (br_table 0)
    ;;FLAG_2
    return
)

)