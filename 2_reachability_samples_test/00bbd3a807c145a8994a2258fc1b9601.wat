(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2336695006 (mut i32) (i32.const -582846554))
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_0
    (i32.const 17)
    global.set $global_2336695006
    global.get $global_2336695006
    i32.popcnt
    f32.reinterpret_i32
    i32.trunc_f32_u
    (br_table 0)
    ;;FLAG_1
    br 0
)

)