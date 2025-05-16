(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i32 i64)
    (local $temp i32)
    ;;FLAG_0
    block
        ;;FLAG_2
        (f32.const -2.4841493306837492e-09)
        i32.trunc_f32_s
        local.tee 0
        nop
        i32.clz
        br_if 0
        ;;FLAG_3
    end

    ;;FLAG_1
    local.get 0
    nop
    i64.extend_i32_u
    i64.extend16_s
    local.set 1
    br 0
)

)