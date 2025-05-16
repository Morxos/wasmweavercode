(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(table $tab_3062035514 1 funcref)
(global $global_901374548 i64 (i64.const -3489314251200228117))
(func $run (export "run") (result i64)
    (local funcref)
    (local $temp i32)
    (f32.const -2.4574420052837924e-36)
    f32.nearest
    f32.neg
    drop
    (i32.const -8)
    i32.popcnt
    i32.extend16_s
    i32.extend16_s
    i32.ctz
    table.get $tab_3062035514
    local.tee 0
    local.set 0
    global.get $global_901374548
)

)