(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1499365480 i64 (i64.const 4785567207357963651))
(func $run (export "run")
    (local i32 i64)
    (local $temp i32)
    ;;FLAG_0
    (f64.const 2.3718126429532885e-226)
    global.get $global_1499365480
    i64.eqz
    nop
    i32.clz
    i32.clz
    i32.clz
    local.set 0
    f64.floor
    global.get $global_1499365480
    local.set 1
    i32.trunc_f64_s
    i32.eqz
    (br_table 0)
    ;;FLAG_1
    (i32.const 1682937)
    f64.convert_i32_s
    i32.trunc_f64_s
    (br_table 0)
    ;;FLAG_2
    (i64.const -96964)
    i64.ctz
    local.set 1
)

)