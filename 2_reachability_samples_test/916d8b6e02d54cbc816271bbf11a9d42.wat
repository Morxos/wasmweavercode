(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i64 i32)
    (local $temp i32)
    ;;FLAG_0
    (i32.const -815950)
    i32.eqz
    i64.extend_i32_u
    local.set 0
    (i32.const -2483428)
    local.set 1
    local.get 0
    local.set 0
    br 0
)

)