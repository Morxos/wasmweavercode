(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    ;;FLAG_0
    (i32.const 363)
    i32.extend16_s
    local.set 0
    (f32.const 5.019045193493125e-35)
    f64.promote_f32
    i64.trunc_f64_u
    i64.ctz
    f32.convert_i64_u
    drop
    local.get 0
    (br_table 0)
    ;;FLAG_1
    br 0
)

)