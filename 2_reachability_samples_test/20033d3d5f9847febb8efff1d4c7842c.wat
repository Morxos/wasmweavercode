(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2414658185 (mut f32) (f32.const 4.189375696826532e+18))
(func $run (export "run")
    (local f64)
    (local $temp i32)
    ;;FLAG_0
    global.get $global_2414658185
    f32.sqrt
    i32.reinterpret_f32
    f32.convert_i32_u
    i32.trunc_f32_u
    (br_table 0)
    ;;FLAG_1
    (f32.const 3.8089731410357723e+33)
    global.set $global_2414658185
    local.get 0
    drop
    return
)

)