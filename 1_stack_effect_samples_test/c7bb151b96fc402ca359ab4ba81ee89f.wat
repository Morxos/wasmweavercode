(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1201183949 (mut i64) (i64.const 6308428799666284038))
(func $run (export "run")
    (local i32 i64)
    (local $temp i32)
    local.get 0
    i32.extend16_s
    i32.extend16_s
    nop
    i64.extend_i32_s
    ;;INSPECT
    f64.reinterpret_i64
    f64.trunc
    f64.trunc
    i64.trunc_f64_u
    i64.eqz
    i64.extend_i32_s
    f32.convert_i64_u
    f32.neg
    f32.abs
    i64.trunc_f32_u
    i64.popcnt
    global.set $global_1201183949
    (i64.const -58219576)
    f64.convert_i64_s
    f64.abs
    i32.trunc_f64_u
    i64.extend_i32_s
    global.set $global_1201183949
    global.get $global_1201183949
    local.set 1
)

)