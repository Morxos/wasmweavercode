(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2888983855 (mut i32) (i32.const -265624521))
(func $run (export "run")
    (local i64)
    (local $temp i32)
    ;;FLAG_0
    nop
    (i32.const -225)
    i32.popcnt
    global.set $global_2888983855
    global.get $global_2888983855
    i32.extend8_s
    (br_table 0)
    ;;FLAG_1
    local.get 0
    f64.convert_i64_u
    i32.trunc_f64_s
    (br_table 0)
    ;;FLAG_2
    br 0
)

)