(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(table $tab_3860219519 5 funcref)
(global $global_4215207564 f32 (f32.const 5.497275014635848e+18))
(func $run (export "run")
    (local i64 i32)
    (local $temp i32)
    local.get 0
    i64.extend32_s
    f64.reinterpret_i64
    f32.demote_f64
    f32.nearest
    i32.reinterpret_f32
    ;;INSPECT
    local.tee 1
    i64.extend_i32_s
    i64.popcnt
    i64.eqz
    i32.popcnt
    i64.extend_i32_s
    i64.extend32_s
    i32.wrap_i64
    global.get $global_4215207564
    global.get $global_4215207564
    f32.lt
    i32.shr_s
    table.get $tab_3860219519
    drop
)

)