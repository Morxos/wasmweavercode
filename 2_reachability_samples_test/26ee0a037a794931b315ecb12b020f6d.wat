(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_611836170 (mut f64) (f64.const 6.267202472736702e+18))
(func $run (export "run")
    (local i32 f32)
    (local $temp i32)
    ;;FLAG_0
    (i32.const 21801716)
    i32.extend8_s
    global.get $global_611836170
    f32.demote_f64
    (i32.const 51138198)
    local.set 0
    local.set 1
    (br_table 0)
    ;;FLAG_1
    return
)

)