(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(table $tab_3677680843 8 funcref)
(func $run (export "run")
    (local i32)
    (local $temp i32)
    local.get 0
    table.get $tab_3677680843
    drop
    (f64.const 6.162878104590581e+235)
    ;;INSPECT
    f64.sqrt
    drop
    local.get 0
    local.set 0
    (f64.const 1.7405059000006915e-296)
    drop
)

)