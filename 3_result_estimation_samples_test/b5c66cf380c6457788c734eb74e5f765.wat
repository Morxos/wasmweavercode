(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(global $global_1991534150 (mut i64) (i64.const 2788966121826347266))
(func $run (export "run") (result i64)
    (local $temp i32)
    nop
    nop
    (i64.const 48)
    global.set $global_1991534150
    global.get $global_1991534150
    i64.popcnt
)

)