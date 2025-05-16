(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_831512494 (mut i32) (i32.const -2074986065))
(func $run (export "run") (result i32)
    (local i64)
    (local $temp i32)
    (i32.const -10)
    global.set $global_831512494
    (i64.const -484343)
    i64.ctz
    local.set 0
    nop
    global.get $global_831512494
)

)