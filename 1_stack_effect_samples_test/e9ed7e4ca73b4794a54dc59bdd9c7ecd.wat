(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3205894080 (mut f64) (f64.const -4.1801545485996626e+18))
(func $run (export "run")
    (local i32 i32 f64)
    (local $temp i32)
    local.get 0
    f32.convert_i32_u
    i64.trunc_f32_s
    i64.eqz
    i32.extend16_s
    ;;INSPECT
    f64.convert_i32_u
    f64.neg
    i64.reinterpret_f64
    f64.convert_i64_u
    local.get 0
    f64.convert_i32_u
    f64.ne
    i32.extend16_s
    i32.eqz
    i32.clz
    i32.popcnt
    local.tee 1
    i32.extend16_s
    f64.convert_i32_u
    f64.trunc
    i64.trunc_f64_s
    i64.popcnt
    i64.ctz
    f64.reinterpret_i64
    f64.neg
    local.tee 2
    f64.trunc
    f64.sqrt
    i64.reinterpret_f64
    i64.clz
    f64.convert_i64_u
    global.set $global_3205894080
)

)