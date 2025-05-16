(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_1722324323 f64 (f64.const 2.382289589138647e+18))
(global $global_3167473666 (mut i64) (i64.const 6192885131915308870))
(global $global_3335496277 (mut f64) (f64.const -8.830407291549143e+18))
(func $run (export "run") (result i32)
    (local f32)
    (local $temp i32)
    global.get $global_1722324323
    i64.reinterpret_f64
    global.set $global_3167473666
    nop
    local.get 0
    f32.floor
    f64.promote_f32
    f64.neg
    global.set $global_3335496277
    global.get $global_1722324323
    global.set $global_3335496277
    (i32.const 6547)
)

)