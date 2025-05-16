(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_0
    (i32.const 0)
    i32.clz
    f32.reinterpret_i32
    i64.trunc_f32_u
    f32.convert_i64_u
    i32.reinterpret_f32
    (br_table 0)
    ;;FLAG_1
    br 0
)

)