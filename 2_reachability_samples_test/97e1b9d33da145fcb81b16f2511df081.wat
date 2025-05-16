(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1472766822 (mut i32) (i32.const 830690667))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    ;;FLAG_0
    global.get $global_1472766822
    local.set 0
    (f64.const 2.4756389718181304e-280)
    i32.trunc_f64_s
    i32.clz
    (br_table 0)
    ;;FLAG_1
    local.get 0
    (br_table 0)
    ;;FLAG_2
    br 0
)

)