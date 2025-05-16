(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_240588697 i32 (i32.const -1345948792))
(func $run (export "run")
    (local i64)
    (local $temp i32)
    ;;FLAG_0
    global.get $global_240588697
    i64.extend_i32_u
    local.tee 0
    i64.eqz
    f32.convert_i32_s
    i32.trunc_f32_u
    (br_table 0)
    ;;FLAG_1
    (i32.const 533961679)
    (br_table 0)
    ;;FLAG_2
    br 0
)

)