(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i32 i32)
    (local $temp i32)
    ;;FLAG_0
    (i32.const 446093)
    local.tee 0
    local.tee 1
    f32.reinterpret_i32
    i32.trunc_f32_u
    (br_table 0)
    ;;FLAG_1
    br 0
)

)