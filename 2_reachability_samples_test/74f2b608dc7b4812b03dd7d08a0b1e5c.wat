(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2704168552 (mut i64) (i64.const 2052836302179180000))
(func $run (export "run")
    (local i64 i32)
    (local $temp i32)
    ;;FLAG_0
    nop
    global.get $global_2704168552
    (f64.const 1.8071389952085633e+127)
    i64.reinterpret_f64
    i64.le_s
    (br_table 0)
    ;;FLAG_1
    (f64.const 1.3680765689252482e-194)
    nop
    global.get $global_2704168552
    local.set 0
    i32.trunc_f64_s
    local.tee 1
    (br_table 0)
    ;;FLAG_2
    local.get 0
    i64.eqz
    (br_table 0)
    ;;FLAG_3
    br 0
)

)