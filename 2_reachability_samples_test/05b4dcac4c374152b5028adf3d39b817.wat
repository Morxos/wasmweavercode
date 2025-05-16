(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3320660890 f64 (f64.const -1.6886420696079483e+18))
(global $global_1955158913 (mut f64) (f64.const 3.558422796923828e+18))
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_0
    global.get $global_3320660890
    (f64.const 2.376742890971059e-115)
    nop
    f64.copysign
    drop
    global.get $global_3320660890
    global.set $global_1955158913
    global.get $global_3320660890
    global.get $global_3320660890
    f64.copysign
    i64.trunc_f64_s
    i64.extend32_s
    i64.clz
    drop
    br 0
)

)