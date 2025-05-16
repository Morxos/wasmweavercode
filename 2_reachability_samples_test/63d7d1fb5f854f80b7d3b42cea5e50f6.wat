(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i64 f32)
    (local $temp i32)
    ;;FLAG_0
    (i64.const -3)
    local.set 0
    (i64.const -70246)
    (i64.const -950361)
    i64.or
    f32.convert_i64_u
    local.get 0
    i64.extend8_s
    (i64.const 3)
    i64.and
    drop
    local.set 1
    return
)

)