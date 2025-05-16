(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(table $tab_659341310 5 funcref)
(global $global_1589431074 f32 (f32.const 2.479747265820885e+18))
(func $run (export "run") (result i64)
    (local i32 funcref)
    (local $temp i32)
    global.get $global_1589431074
    f32.trunc
    local.get 0
    table.get $tab_659341310
    local.set 1
    i64.trunc_f32_u
)

)