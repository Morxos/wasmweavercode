(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(table $tab_3529080197 7 funcref)
(global $global_2362962401 i32 (i32.const 590078360))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    (f32.const -525708384.0)
    i32.trunc_f32_s
    local.get 0
    ;;INSPECT
    i32.reinterpret_f32
    i32.eqz
    i32.le_u
    f32.reinterpret_i32
    f32.ceil
    i64.trunc_f32_u
    i64.ctz
    (f32.const -1.0465232820912559e+28)
    nop
    f32.abs
    f32.abs
    global.get $global_2362962401
    f64.convert_i32_u
    f64.abs
    i64.trunc_f64_u
    i32.wrap_i64
    i32.ctz
    table.get $tab_3529080197
    drop
    (f64.const 3.197909269106292e+296)
    f64.ceil
    f32.demote_f64
    f32.lt
    drop
    drop
)

)