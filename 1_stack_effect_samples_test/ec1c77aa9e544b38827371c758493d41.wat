(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2982978301 (mut i32) (i32.const -1909324879))
(func $run (export "run")
    (local i32 f32)
    (local $temp i32)
    local.get 0
    local.get 0
    f32.convert_i32_s
    i64.trunc_f32_u
    i64.popcnt
    f64.convert_i64_s
    f64.trunc
    f64.sqrt
    i64.trunc_f64_u
    f64.convert_i64_s
    i64.trunc_f64_s
    i64.extend32_s
    i64.eqz
    i32.gt_s
    ;;INSPECT
    f32.reinterpret_i32
    i64.trunc_f32_u
    i64.eqz
    i32.extend16_s
    global.set $global_2982978301
    local.get 0
    global.get $global_2982978301
    i32.shr_s
    f32.convert_i32_s
    local.tee 1
    f32.trunc
    i64.trunc_f32_u
    i64.eqz
    nop
    global.set $global_2982978301
)

)