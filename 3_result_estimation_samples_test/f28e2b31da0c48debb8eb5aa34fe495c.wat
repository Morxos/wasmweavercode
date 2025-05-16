(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result i32)
    (local i64)
    (local $temp i32)
    nop
    (i64.const 7742252344180276124)
    i64.extend8_s
    local.set 0
    (i64.const -5)
    f64.convert_i64_s
    i32.trunc_f64_s
)

)