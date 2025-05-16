(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2144272948 (mut f32) (f32.const -8.568533147921154e+18))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    ;;FLAG_0
    nop
    local.get 0
    i32.reinterpret_f32
    i32.extend16_s
    drop
    (i64.const -5694481)
    i64.ctz
    f32.convert_i64_u
    global.set $global_2144272948
    (f32.const -1319083.625)
    global.set $global_2144272948
    return
)

)