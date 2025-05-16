(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i64)
    (local $temp i32)
    ;;FLAG_0
    (i64.const 41)
    nop
    i64.clz
    i64.ctz
    local.tee 0
    i64.extend32_s
    i64.clz
    i64.extend8_s
    i64.extend16_s
    drop
    local.get 0
    drop
    (f64.const 3.7686286256487956e-63)
    i64.trunc_f64_u
    f32.convert_i64_s
    i32.trunc_f32_u
    (br_table 0)
    ;;FLAG_1
    br 0
)

)