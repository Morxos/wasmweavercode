(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3108465723 (mut i64) (i64.const 4591410789883157378))
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_0
    (i64.const -5072710990628173062)
    drop
    (i64.const 110)
    f64.reinterpret_i64
    i64.trunc_f64_s
    i64.clz
    global.set $global_3108465723
    return
)

)