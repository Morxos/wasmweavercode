(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1224427964 (mut f64) (f64.const 1.7827959987577958e+18))
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_0
    (i32.const -980128454)
    global.get $global_1224427964
    global.get $global_1224427964
    f64.abs
    f64.le
    i32.add
    (br_table 0)
    ;;FLAG_1
    br 0
)

)