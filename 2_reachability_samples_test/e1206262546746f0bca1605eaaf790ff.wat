(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    ;;FLAG_0
    (i32.const -414971757)
    i64.extend_i32_u
    f64.convert_i64_u
    i32.trunc_f64_u
    local.tee 0
    i32.ctz
    (br_table 0)
    ;;FLAG_1
    return
)

)