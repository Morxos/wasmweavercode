(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(table $tab_2003778688 10 funcref)
(func $run (export "run")
    (local i32)
    (local $temp i32)
    local.get 0
    f32.convert_i32_u
    i32.trunc_f32_u
    i32.extend8_s
    i32.popcnt
    f32.reinterpret_i32
    f32.ceil
    f32.abs
    i64.trunc_f32_u
    i64.eqz
    f32.convert_i32_u
    (f32.const 8.825068463175784e-20)
    f32.ne
    table.get $tab_2003778688
    (f32.const -0.5350852012634277)
    drop
    (i32.const 2581)
    i32.eqz
    local.get 0
    drop
    i32.eqz
    i32.eqz
    drop
    ;;INSPECT
    drop
)

)