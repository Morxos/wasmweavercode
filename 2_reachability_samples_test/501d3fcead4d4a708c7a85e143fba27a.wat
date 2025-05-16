(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f64)
    (local $temp i32)
    ;;FLAG_0
    (i64.const -99351)
    f32.convert_i64_u
    f32.sqrt
    i32.reinterpret_f32
    f64.convert_i32_u
    drop
    local.get 0
    i32.trunc_f64_u
    (br_table 0)
    ;;FLAG_1
    br 0
)

)