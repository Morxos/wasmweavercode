(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result i64)
    (local i64)
    (local $temp i32)
    nop
    (i64.const -547036471)
    local.set 0
    local.get 0
    local.get 0
    i64.ge_s
    i32.clz
    i64.extend_i32_u
)

)