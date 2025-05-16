(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i32 i32 f64)
    (local $temp i32)
    ;;FLAG_0
    (i32.const 761812)
    i32.extend8_s
    f64.convert_i32_u
    (f64.const 3.7869185995158516e-71)
    f64.le
    local.set 0
    (i32.const 101939696)
    local.tee 1
    (br_table 0)
    ;;FLAG_1
    (f64.const 1.1111199048196346e-74)
    local.set 2
    br 0
)

)