(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_986229364 (mut i64) (i64.const -2045246278217554166))
(global $global_1935616031 (mut f32) (f32.const 4.634781809924637e+18))
(func $run (export "run")
    (local i64 f32)
    (local $temp i32)
    global.get $global_986229364
    i64.extend16_s
    i64.popcnt
    i64.clz
    local.tee 0
    f64.convert_i64_s
    i32.trunc_f64_u
    f64.convert_i32_s
    i64.trunc_f64_s
    i64.eqz
    i32.extend16_s
    f32.convert_i32_s
    f32.ceil
    nop
    f32.ceil
    local.tee 1
    f32.ceil
    f32.nearest
    i64.trunc_f32_s
    i64.eqz
    ;;INSPECT
    nop
    i32.extend8_s
    f32.convert_i32_s
    global.set $global_1935616031
    nop
    local.get 0
    i64.ctz
    f64.convert_i64_u
    i64.trunc_f64_u
    i64.popcnt
    i64.popcnt
    i64.eqz
    i32.extend16_s
    f64.convert_i32_s
    i64.reinterpret_f64
    global.set $global_986229364
)

)