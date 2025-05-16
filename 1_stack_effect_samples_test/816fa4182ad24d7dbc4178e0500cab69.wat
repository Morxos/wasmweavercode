(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(table $tab_3684812124 7 funcref)
(global $global_743776495 (mut f64) (f64.const 5.11552519111127e+18))
(func $run (export "run")
    (local i32 i64 f32)
    (local $temp i32)
    local.get 0
    f32.convert_i32_u
    i32.reinterpret_f32
    i32.popcnt
    f64.convert_i32_s
    ;;INSPECT
    f64.trunc
    f64.trunc
    i64.trunc_f64_u
    global.get $global_743776495
    f64.floor
    f64.trunc
    i64.trunc_f64_s
    i64.rem_s
    local.tee 1
    f32.convert_i64_s
    f32.trunc
    f32.trunc
    f32.trunc
    f32.trunc
    f32.trunc
    f32.sqrt
    f32.sqrt
    local.tee 2
    i32.reinterpret_f32
    table.get $tab_3684812124
    drop
)

)