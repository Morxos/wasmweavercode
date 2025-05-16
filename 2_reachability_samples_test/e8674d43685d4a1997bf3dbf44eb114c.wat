(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i32 i32)
    (local $temp i32)
    ;;FLAG_0
    local.get 0
    local.tee 1
    f32.convert_i32_s
    f32.neg
    i32.reinterpret_f32
    (br_table 0)
    ;;FLAG_1
    local.get 0
    (br_table 0)
    ;;FLAG_2
    nop
    br 0
)

)