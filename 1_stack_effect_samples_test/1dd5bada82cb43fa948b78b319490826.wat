(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_976893185 (mut i64) (i64.const 2820487610654536201))
(func $run (export "run")
    (local i64 f64)
    (local $temp i32)
    local.get 0
    f32.convert_i64_s
    i32.reinterpret_f32
    f32.convert_i32_u
    i32.reinterpret_f32
    i32.ctz
    i64.extend_i32_s
    i64.eqz
    i32.extend16_s
    f32.convert_i32_s
    f32.floor
    f32.floor
    f32.abs
    i32.reinterpret_f32
    ;;INSPECT
    local.get 0
    i64.eqz
    i32.shr_s
    i32.eqz
    i32.eqz
    i32.ctz
    i64.extend_i32_s
    i64.popcnt
    i64.popcnt
    i64.eqz
    f64.convert_i32_s
    f64.neg
    f64.abs
    f64.sqrt
    local.tee 1
    f64.ceil
    f64.sqrt
    i64.trunc_f64_u
    global.set $global_976893185
)

)