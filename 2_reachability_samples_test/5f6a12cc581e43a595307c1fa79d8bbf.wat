(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1946691267 (mut i64) (i64.const -4182554614621764778))
(func $run (export "run")
    (local i64)
    (local $temp i32)
    ;;FLAG_0
    (f64.const 6.801777262111891e+257)
    i64.reinterpret_f64
    i64.extend16_s
    global.set $global_1946691267
    local.get 0
    (i64.const 4416)
    i64.extend16_s
    i64.sub
    i64.clz
    i64.clz
    drop
    return
)

)