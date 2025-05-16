(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    ;;FLAG_0
    local.get 0
    (f32.const 1.6003588438034058)
    f32.lt
    i32.popcnt
    (i32.const 2043225488)
    i32.shr_s
    (br_table 0)
    ;;FLAG_1
    br 0
)

)