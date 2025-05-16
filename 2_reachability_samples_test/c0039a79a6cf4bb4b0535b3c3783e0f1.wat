(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1360377613 (mut f32) (f32.const 8.842421494400156e+18))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    ;;FLAG_0
    global.get $global_1360377613
    f32.abs
    i64.trunc_f32_u
    nop
    f32.convert_i64_s
    i32.reinterpret_f32
    f32.reinterpret_i32
    global.get $global_1360377613
    f32.ne
    i32.clz
    (br_table 0)
    ;;FLAG_1
    local.get 0
    i32.trunc_f32_u
    i32.ctz
    f32.convert_i32_u
    local.set 0
    return
)

)