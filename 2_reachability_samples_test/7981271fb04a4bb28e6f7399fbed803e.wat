(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3277192702 (mut i64) (i64.const 2064557774443425208))
(func $run (export "run")
    (local f64 f32)
    (local $temp i32)
    ;;FLAG_0
    local.get 0
    f64.trunc
    i64.trunc_f64_u
    i64.clz
    f64.convert_i64_u
    f64.floor
    i64.trunc_f64_s
    f32.convert_i64_s
    i64.trunc_f32_s
    global.set $global_3277192702
    (f32.const 0.029274925589561462)
    local.set 1
    br 0
)

)