(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_989301967 (mut f64) (f64.const -7.317273772365933e+18))
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_0
    nop
    (i32.const -48)
    i32.popcnt
    f64.convert_i32_s
    f64.floor
    f64.ceil
    global.set $global_989301967
    return
)

)