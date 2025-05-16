(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(table $tab_1663405097 5 funcref)
(global $global_2430348498 (mut f32) (f32.const 3.1787554609876173e+18))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    ;;FLAG_0
    (f64.const 1.409988109601005e+256)
    i64.reinterpret_f64
    i64.eqz
    i32.clz
    local.tee 0
    i32.clz
    f32.convert_i32_s
    nop
    (f32.const 2.7717675063413308e+29)
    f32.ge
    table.get $tab_1663405097
    global.get $global_2430348498
    f32.neg
    f32.abs
    f32.sqrt
    f64.promote_f32
    f64.nearest
    drop
    nop
    (f32.const -1.8422538825600236e-22)
    f32.trunc
    drop
    drop
    local.get 0
    br_if 0
    ;;FLAG_1
)

)