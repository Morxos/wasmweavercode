(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3557402449 (mut f32) (f32.const 1.4890592516482007e+18))
(func $run (export "run")
    (local f32 f64)
    (local $temp i32)
    ;;FLAG_0
    nop
    nop
    local.get 0
    global.set $global_3557402449
    nop
    local.get 0
    i32.trunc_f32_s
    (br_table 0)
    ;;FLAG_1
    (f64.const 1.329474548750071e+33)
    local.set 1
    br 0
)

)