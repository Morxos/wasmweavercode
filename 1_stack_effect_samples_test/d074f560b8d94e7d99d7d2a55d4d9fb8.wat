(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3371231671 (mut i64) (i64.const -635663955955599960))
(func $run (export "run")
    (local f64 f64 i32)
    (local $temp i32)
    global.get $global_3371231671
    i64.extend16_s
    i64.extend16_s
    local.get 0
    f64.abs
    local.tee 1
    i64.trunc_f64_u
    i64.eqz
    local.tee 2
    f64.convert_i32_u
    i64.trunc_f64_u
    i64.or
    i64.popcnt
    i64.popcnt
    i64.ctz
    f32.convert_i64_u
    f32.neg
    i64.trunc_f32_s
    i64.popcnt
    i64.ctz
    i64.eqz
    i32.ctz
    i32.ctz
    i32.ctz
    i32.extend8_s
    f32.convert_i32_s
    f32.sqrt
    f32.ceil
    f32.neg
    i64.trunc_f32_s
    f64.convert_i64_s
    i64.trunc_f64_s
    i64.ctz
    i64.popcnt
    i64.extend32_s
    f64.reinterpret_i64
    f64.sqrt
    f64.sqrt
    f32.demote_f64
    i32.trunc_f32_s
    ;;INSPECT
    f64.convert_i32_s
    i64.trunc_f64_s
    i64.eqz
    f64.convert_i32_u
    drop
)

)