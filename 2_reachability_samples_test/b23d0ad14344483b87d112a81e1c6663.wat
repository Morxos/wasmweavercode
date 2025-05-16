(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_4279655060 (mut i32) (i32.const 506303445))
(func $run (export "run")
    (local i64)
    (local $temp i32)
    ;;FLAG_0
    (i64.const 3678)
    i64.extend32_s
    f32.convert_i64_u
    (i64.const 627454)
    nop
    local.tee 0
    local.get 0
    i64.lt_s
    global.set $global_4279655060
    i32.trunc_f32_u
    (br_table 0)
    ;;FLAG_1
    return
)

)