(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3066966112 (mut i32) (i32.const 210942550))
(func $run (export "run")
    (local i32 i32)
    (local $temp i32)
    ;;FLAG_0
    local.get 0
    local.tee 1
    i64.extend_i32_u
    f32.convert_i64_u
    i64.trunc_f32_u
    f64.convert_i64_s
    i32.trunc_f64_s
    global.set $global_3066966112
    return
)

)