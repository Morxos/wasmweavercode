(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result i32)
    (local i64)
    (local $temp i32)
    (i64.const 7361347847079566559)
    i64.clz
    drop
    local.get 0
    local.get 0
    i64.lt_u
)

)