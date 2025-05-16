(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_515270205 (mut i64) (i64.const 6218757432087207062))
(func $run (export "run")
    (local i64)
    (local $temp i32)
    ;;FLAG_0
    global.get $global_515270205
    f64.convert_i64_u
    f64.trunc
    f64.floor
    local.get 0
    i64.extend32_s
    f64.reinterpret_i64
    f64.le
    (br_table 0)
    ;;FLAG_1
    br 0
)

)