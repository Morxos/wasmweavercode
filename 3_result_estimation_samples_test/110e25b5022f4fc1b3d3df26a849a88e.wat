(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_1157020050 (mut f32) (f32.const -5.123364095378063e+18))
(func $run (export "run") (result i32)
    (local i64)
    (local $temp i32)
    (f32.const -8.255712912362451e+24)
    (f32.const -1.3025268621034442e+21)
    f32.min
    f32.ceil
    f32.neg
    f32.floor
    global.set $global_1157020050
    nop
    local.get 0
    drop
    (i32.const 65169952)
)

)