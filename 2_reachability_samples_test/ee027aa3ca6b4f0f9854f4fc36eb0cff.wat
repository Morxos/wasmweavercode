(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2015808574 (mut i32) (i32.const 839255552))
(global $global_3401621015 (mut f32) (f32.const 5.828748221035315e+17))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    ;;FLAG_0
    global.get $global_2015808574
    f32.convert_i32_u
    f32.trunc
    local.set 0
    (f32.const -1.3202230664345891e+34)
    f32.nearest
    f32.floor
    global.set $global_3401621015
    br 0
)

)