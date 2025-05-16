(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(table $tab_3283526760 10 funcref)
(global $global_2643790606 (mut f32) (f32.const -3.4402220748518195e+18))
(global $global_781007711 (mut f64) (f64.const -2.5476315796494787e+18))
(func $run (export "run")
    (local f64 f64 i64 f32 f32)
    (local $temp i32)
    local.get 0
    local.tee 1
    f64.nearest
    f64.nearest
    f64.floor
    f64.abs
    i64.reinterpret_f64
    i64.clz
    i64.eqz
    ;;INSPECT
    i32.extend16_s
    (f32.const 4.9954856552110556e+26)
    global.set $global_2643790606
    f64.convert_i32_s
    f64.trunc
    i64.reinterpret_f64
    local.tee 2
    f32.convert_i64_s
    f32.sqrt
    local.tee 3
    local.tee 4
    i64.trunc_f32_u
    i32.wrap_i64
    local.get 0
    f64.trunc
    f64.nearest
    f64.trunc
    global.set $global_781007711
    table.get $tab_3283526760
    drop
)

)