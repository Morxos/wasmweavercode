(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2603468650 (mut i32) (i32.const -1257863754))
(global $global_2530819565 (mut f64) (f64.const 3.9528518800536044e+18))
(func $run (export "run")
    (local i64 i32)
    (local $temp i32)
    ;;FLAG_0
    (i32.const 0)
    global.set $global_2603468650
    (i64.const -5709795)
    local.tee 0
    f64.reinterpret_i64
    global.set $global_2530819565
    (i32.const 4)
    nop
    i32.extend16_s
    local.tee 1
    global.set $global_2603468650
    return
)

)