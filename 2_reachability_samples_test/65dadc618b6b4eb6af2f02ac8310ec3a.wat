(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2869572518 (mut f64) (f64.const 7.244153067023149e+18))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    ;;FLAG_0
    nop
    nop
    (i32.const -9838)
    f64.convert_i32_u
    global.set $global_2869572518
    (i32.const -50)
    (br_table 0)
    ;;FLAG_1
    local.get 0
    (br_table 0)
    ;;FLAG_2
    br 0
)

)