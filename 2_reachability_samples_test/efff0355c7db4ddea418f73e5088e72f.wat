(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i64)
    (local $temp i32)
    ;;FLAG_0
    (i32.const 8953909)
    i64.extend_i32_s
    local.tee 0
    f64.convert_i64_s
    nop
    i64.trunc_f64_s
    (i32.const -249200)
    i64.extend_i32_u
    local.get 0
    drop
    i64.add
    i64.eqz
    (br_table 0)
    ;;FLAG_1
    br 0
)

)