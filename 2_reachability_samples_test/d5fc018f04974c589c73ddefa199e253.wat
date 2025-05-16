(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1586459123 (mut i32) (i32.const 239841195))
(func $run (export "run")
    (local f64)
    (local $temp i32)
    ;;FLAG_0
    (i32.const 9880)
    global.set $global_1586459123
    (i32.const -113878592)
    local.get 0
    f64.trunc
    f64.trunc
    (f64.const 6.5916827061839e-38)
    f64.ge
    i32.popcnt
    i32.popcnt
    i32.lt_u
    (br_table 0)
    ;;FLAG_1
    br 0
)

)