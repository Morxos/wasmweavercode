(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_4229343969 (mut f64) (f64.const 2.2431350554746286e+18))
(func $run (export "run")
    (local i32 f64)
    (local $temp i32)
    ;;FLAG_0
    (f64.const 3.574081130653291e-164)
    global.set $global_4229343969
    (i64.const 426642)
    drop
    nop
    (i32.const 66719396)
    drop
    global.get $global_4229343969
    i64.reinterpret_f64
    i64.eqz
    (f64.const 2.3870061538026548e+175)
    (i32.const 765)
    local.set 0
    f64.floor
    nop
    local.set 1
    (i32.const -7)
    i32.shr_u
    (br_table 0)
    ;;FLAG_1
    return
)

)