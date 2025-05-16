(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1388734717 (mut i32) (i32.const -1542266915))
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_0
    nop
    (i32.const -67594)
    f64.convert_i32_u
    i64.trunc_f64_u
    i64.clz
    i64.eqz
    global.set $global_1388734717
    br 0
)

)