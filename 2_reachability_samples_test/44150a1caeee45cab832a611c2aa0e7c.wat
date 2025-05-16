(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i64)
    (local $temp i32)
    ;;FLAG_0
    nop
    (i64.const -1)
    f32.convert_i64_s
    i64.trunc_f32_s
    local.tee 0
    local.set 0
    br 0
)

)