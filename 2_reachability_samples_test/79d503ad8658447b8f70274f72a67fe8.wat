(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1029461701 (mut i64) (i64.const 2934091610630339134))
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_0
    (i64.const -2)
    global.set $global_1029461701
    global.get $global_1029461701
    i64.eqz
    f64.convert_i32_u
    i32.trunc_f64_s
    br_if 0
    ;;FLAG_1
    br 0
)

)