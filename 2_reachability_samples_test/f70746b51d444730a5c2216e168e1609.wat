(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2831152596 (mut i32) (i32.const 286421309))
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_0
    (i64.const 8112047615385264125)
    i64.clz
    (i32.const 19679811)
    global.set $global_2831152596
    nop
    i64.eqz
    (br_table 0)
    ;;FLAG_1
    br 0
)

)