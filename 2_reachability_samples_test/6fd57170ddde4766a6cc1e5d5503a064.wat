(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    ;;FLAG_0
    (i32.const 97)
    local.tee 0
    i32.popcnt
    f64.convert_i32_s
    i32.trunc_f64_s
    (br_table 0)
    ;;FLAG_1
    br 0
)

)