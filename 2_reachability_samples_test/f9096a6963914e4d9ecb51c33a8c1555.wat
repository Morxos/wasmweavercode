(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3490668965 i32 (i32.const 114131932))
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_0
    global.get $global_3490668965
    i32.popcnt
    i32.extend16_s
    (f64.const 6.464775908012682e+297)
    (f64.const 9.480502765500449e-104)
    f64.le
    i32.gt_u
    (br_table 0)
    ;;FLAG_1
    br 0
)

)