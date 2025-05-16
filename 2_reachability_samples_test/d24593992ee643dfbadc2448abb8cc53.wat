(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i64)
    (local $temp i32)
    ;;FLAG_0
    (i64.const 752074484)
    local.tee 0
    i64.ctz
    f64.convert_i64_u
    f64.neg
    f32.demote_f64
    f32.abs
    i32.trunc_f32_u
    (br_table 0)
    ;;FLAG_1
    br 0
)

)