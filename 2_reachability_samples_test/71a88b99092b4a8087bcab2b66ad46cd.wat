(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1504472041 (mut i32) (i32.const 466186889))
(func $run (export "run")
    (local f64)
    (local $temp i32)
    ;;FLAG_0
    nop
    (i64.const 975523939)
    i64.eqz
    global.get $global_1504472041
    nop
    i32.shr_s
    (br_table 0)
    ;;FLAG_1
    global.get $global_1504472041
    f64.convert_i32_u
    local.set 0
    return
)

)