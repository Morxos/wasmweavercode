(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_413828998 i32 (i32.const 1707596781))
(func $run (export "run") (result i32)
    (local i32)
    (local $temp i32)
    global.get $global_413828998
    i32.extend8_s
    i32.ctz
    local.tee 0
    i32.ctz
    i32.ctz
)

)