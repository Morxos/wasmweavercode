(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    ;;FLAG_0
    (f64.const 0.0)
    i64.trunc_f64_u
    i32.wrap_i64
    i32.extend16_s
    local.get 0
    i64.trunc_f32_s
    i64.extend16_s
    drop
    (br_table 0)
    ;;FLAG_1
    br 0
)

)