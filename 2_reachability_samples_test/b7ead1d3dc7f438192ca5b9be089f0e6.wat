(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_975718765 (mut i32) (i32.const 857203493))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    ;;FLAG_0
    global.get $global_975718765
    local.tee 0
    f64.convert_i32_s
    f64.floor
    (f64.const 2.3378718440064595e-236)
    f64.le
    i64.extend_i32_s
    i64.ctz
    i64.extend32_s
    i64.eqz
    (br_table 0)
    ;;FLAG_1
    br 0
)

)