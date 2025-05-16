(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i64 i64 i32)
    (local $temp i32)
    ;;FLAG_0
    (i64.const 42131472)
    local.tee 0
    local.tee 1
    i64.eqz
    f32.convert_i32_s
    i32.trunc_f32_u
    local.set 2
    br 0
)

)