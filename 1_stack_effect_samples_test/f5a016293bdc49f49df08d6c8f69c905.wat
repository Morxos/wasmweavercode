(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_881835070 (mut i32) (i32.const -452751858))
(func $run (export "run")
    (local i64 i64 i32)
    (local $temp i32)
    local.get 0
    i64.popcnt
    f64.convert_i64_u
    i64.reinterpret_f64
    i64.eqz
    i64.extend_i32_s
    i64.popcnt
    local.tee 1
    i64.eqz
    i32.clz
    ;;INSPECT
    i64.extend_i32_s
    f32.convert_i64_s
    f32.sqrt
    f32.ceil
    f32.trunc
    f32.sqrt
    i64.trunc_f32_u
    f64.convert_i64_s
    f64.sqrt
    i64.trunc_f64_s
    i64.popcnt
    i64.extend32_s
    i64.extend8_s
    i64.eqz
    drop
    global.get $global_881835070
    local.set 2
)

)