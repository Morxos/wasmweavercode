(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i64)
    (local $temp i32)
    ;;FLAG_0
    nop
    local.get 0
    i64.extend16_s
    f32.convert_i64_s
    i32.reinterpret_f32
    (br_table 0)
    ;;FLAG_1
    br 0
)

)