(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    ;;FLAG_0
    nop
    (f64.const 1.516747796220111e+62)
    f64.sqrt
    i64.reinterpret_f64
    f32.convert_i64_s
    f32.sqrt
    local.tee 0
    i32.reinterpret_f32
    (br_table 0)
    ;;FLAG_1
    br 0
)

)