(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(table $tab_4071828058 3 funcref)
(global $global_3988436150 (mut f32) (f32.const 1.314917775407317e+18))
(func $run (export "run")
    (local i64)
    (local $temp i32)
    local.get 0
    i64.extend32_s
    i64.eqz
    i64.extend_i32_u
    i64.ctz
    f64.reinterpret_i64
    f64.trunc
    i32.trunc_f64_u
    f32.reinterpret_i32
    f32.abs
    f32.sqrt
    local.get 0
    i64.ctz
    i64.eqz
    ;;INSPECT
    f64.convert_i32_u
    f64.nearest
    f32.demote_f64
    global.set $global_3988436150
    i64.trunc_f32_u
    i64.eqz
    i32.popcnt
    table.get $tab_4071828058
    drop
)

)