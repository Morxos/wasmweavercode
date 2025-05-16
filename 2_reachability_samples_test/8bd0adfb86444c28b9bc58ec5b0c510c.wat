(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3035011641 (mut f32) (f32.const 4.146654516126679e+17))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    ;;FLAG_0
    nop
    local.get 0
    i32.popcnt
    f32.convert_i32_u
    global.set $global_3035011641
    nop
    br 0
)

)