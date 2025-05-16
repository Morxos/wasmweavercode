(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1117488467 (mut f64) (f64.const 4.208242831828058e+18))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    local.get 0
    i32.extend16_s
    local.get 0
    i32.shr_s
    f32.convert_i32_s
    i64.trunc_f32_u
    local.get 0
    f64.convert_i32_s
    f32.demote_f64
    i64.trunc_f32_u
    i64.extend16_s
    i64.popcnt
    i64.popcnt
    f64.reinterpret_i64
    i64.reinterpret_f64
    i64.extend32_s
    f64.convert_i64_u
    f64.neg
    global.set $global_1117488467
    (i64.const -730)
    f64.convert_i64_s
    f64.abs
    f64.sqrt
    f64.sqrt
    f64.sqrt
    i64.reinterpret_f64
    i64.rem_s
    f64.convert_i64_s
    f64.sqrt
    f64.trunc
    f64.sqrt
    ;;INSPECT
    drop
)

)