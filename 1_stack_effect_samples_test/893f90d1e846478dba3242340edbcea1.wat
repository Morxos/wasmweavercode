(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_593508014 (mut i64) (i64.const -2544441347038997832))
(func $run (export "run")
    (local i32 f32)
    (local $temp i32)
    ;;INSPECT
    local.get 0
    local.get 0
    i32.shr_s
    f32.convert_i32_s
    f32.sqrt
    local.get 0
    i64.extend_i32_s
    i64.ctz
    i64.popcnt
    i64.ctz
    local.get 0
    i32.popcnt
    i32.eqz
    f32.convert_i32_s
    f32.floor
    f32.abs
    f32.neg
    f32.ceil
    i32.reinterpret_f32
    i32.clz
    i32.extend16_s
    i32.popcnt
    f64.convert_i32_s
    f32.demote_f64
    i32.reinterpret_f32
    drop
    i64.eqz
    i32.extend8_s
    f64.convert_i32_s
    i64.reinterpret_f64
    global.set $global_593508014
    f32.sqrt
    f32.floor
    local.set 1
)

)