(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2914592233 (mut i64) (i64.const 7237613118652110618))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    ;;FLAG_0
    (f64.const 1.4411603403836194e+254)
    i64.reinterpret_f64
    global.set $global_2914592233
    local.get 0
    i64.trunc_f32_u
    f64.reinterpret_i64
    f64.sqrt
    i32.trunc_f64_s
    f32.convert_i32_u
    f32.nearest
    i64.trunc_f32_u
    f64.reinterpret_i64
    f64.nearest
    f64.floor
    f32.demote_f64
    i64.trunc_f32_u
    f32.convert_i64_s
    f32.sqrt
    local.set 0
    br 0
)

)