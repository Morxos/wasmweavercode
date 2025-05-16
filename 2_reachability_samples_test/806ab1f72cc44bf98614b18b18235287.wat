(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    ;;FLAG_0
    nop
    local.get 0
    i32.extend16_s
    local.set 0
    nop
    (f32.const -4.2764874178412554e-38)
    f32.neg
    i32.trunc_f32_u
    (br_table 0)
    ;;FLAG_1
    br 0
)

)