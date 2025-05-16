(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(table $tab_1102140375 10 funcref)
(global $global_3914570728 (mut f32) (f32.const 5.135784728481235e+18))
(func $run (export "run")
    (local i64)
    (local $temp i32)
    ;;INSPECT
    (f32.const 65147956.0)
    f32.sqrt
    local.get 0
    i64.popcnt
    f64.convert_i64_s
    i64.trunc_f64_u
    i32.wrap_i64
    (f32.const 7.385769815305421e+31)
    global.set $global_3914570728
    table.get $tab_1102140375
    drop
    drop
)

)