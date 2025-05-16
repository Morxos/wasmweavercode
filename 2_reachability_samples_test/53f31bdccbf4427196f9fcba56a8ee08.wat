(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    ;;FLAG_0
    local.get 0
    f32.trunc
    drop
    (i64.const 635862923)
    f32.convert_i64_u
    local.set 0
    return
)

)