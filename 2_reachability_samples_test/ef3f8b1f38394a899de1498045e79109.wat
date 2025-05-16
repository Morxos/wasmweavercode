(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1365461853 (mut i32) (i32.const 1923208954))
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_0
    (i32.const -4671291)
    global.get $global_1365461853
    i32.div_s
    i64.extend_i32_s
    drop
    br 0
)

)