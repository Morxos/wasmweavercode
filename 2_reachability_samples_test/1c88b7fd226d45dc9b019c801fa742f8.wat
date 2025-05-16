(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i64)
    (local $temp i32)
    ;;FLAG_0
    (i64.const 78020242)
    local.set 0
    (i32.const 7903)
    i64.extend_i32_u
    f32.convert_i64_s
    i64.trunc_f32_u
    i64.ctz
    i64.eqz
    i64.extend_i32_u
    drop
    br 0
)

)