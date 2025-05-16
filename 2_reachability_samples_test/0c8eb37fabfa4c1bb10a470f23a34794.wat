(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2477507707 (mut f64) (f64.const -8.002348977758222e+18))
(func $run (export "run")
    (local i32 f64)
    (local $temp i32)
    ;;FLAG_0
    global.get $global_2477507707
    local.get 0
    (i32.const -13)
    i32.popcnt
    i32.div_u
    drop
    f64.neg
    f64.trunc
    f64.sqrt
    local.set 1
    nop
    br 0
)

)