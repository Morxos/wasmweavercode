(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(table $tab_938280501 6 funcref)
(global $global_233489451 (mut f64) (f64.const 6.637276427299871e+18))
(func $run (export "run")
    (local f32 f64)
    (local $temp i32)
    local.get 0
    i32.reinterpret_f32
    f32.convert_i32_u
    global.get $global_233489451
    f64.floor
    f64.floor
    f64.neg
    local.tee 1
    (f64.const 5.85999896707455e+231)
    f64.floor
    f64.le
    i32.ctz
    i64.extend_i32_s
    f64.convert_i64_u
    ;;INSPECT
    (f64.const 1.0167234119557719e-163)
    f64.max
    local.set 1
    i64.trunc_f32_u
    i32.wrap_i64
    f32.convert_i32_u
    i32.trunc_f32_u
    table.get $tab_938280501
    drop
)

)