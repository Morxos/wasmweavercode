(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2843207731 (mut f32) (f32.const -1.2093114702658273e+18))
(global $global_1013519476 (mut f64) (f64.const 3.030226816054866e+17))
(func $run (export "run")
    (local i32 f32)
    (local $temp i32)
    local.get 0
    ;;INSPECT
    i32.extend8_s
    f32.convert_i32_s
    i32.trunc_f32_u
    i32.popcnt
    i32.popcnt
    i32.extend16_s
    i64.extend_i32_u
    f64.convert_i64_s
    i64.trunc_f64_u
    f64.convert_i64_s
    i64.reinterpret_f64
    i64.eqz
    f32.convert_i32_s
    f32.floor
    f32.ceil
    i64.trunc_f32_u
    i64.eqz
    f32.convert_i32_u
    local.tee 1
    i64.trunc_f32_u
    i64.ctz
    i64.popcnt
    i64.extend32_s
    i64.extend32_s
    i64.clz
    global.get $global_2843207731
    f32.trunc
    f32.neg
    f64.promote_f32
    i64.trunc_f64_u
    i64.rem_u
    f64.reinterpret_i64
    f64.ceil
    f64.floor
    global.set $global_1013519476
)

)