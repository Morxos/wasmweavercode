(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3158259282 f64 (f64.const 6.687134296743424e+17))
(global $global_268520695 (mut f64) (f64.const 6.884202880835144e+18))
(func $run (export "run")
    (local i64 i64 f32 f64)
    (local $temp i32)
    global.get $global_3158259282
    local.get 0
    i64.extend32_s
    i64.clz
    i64.popcnt
    local.set 0
    f64.sqrt
    f64.floor
    local.get 0
    local.set 0
    f64.sqrt
    (i32.const -531)
    f32.reinterpret_i32
    (f32.const -2.1595950028263644e-10)
    ;;INSPECT
    f32.eq
    i32.clz
    local.get 0
    local.tee 1
    f32.convert_i64_s
    local.set 2
    i32.popcnt
    i32.popcnt
    f64.convert_i32_s
    local.set 3
    global.set $global_268520695
)

)