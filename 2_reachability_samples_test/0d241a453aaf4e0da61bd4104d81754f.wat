(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2135850948 (mut i64) (i64.const 8361868281521108794))
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_0
    (f64.const 1.0859186246030787e+175)
    i64.reinterpret_f64
    nop
    global.set $global_2135850948
    global.get $global_2135850948
    i64.eqz
    i32.ctz
    (br_table 0)
    ;;FLAG_1
    nop
    br 0
)

)