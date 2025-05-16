(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2821477616 (mut i32) (i32.const -780089988))
(func $run (export "run")
    (local f32 i64)
    (local $temp i32)
    local.get 0
    i32.reinterpret_f32
    global.get $global_2821477616
    i32.div_u
    f64.convert_i32_s
    i64.trunc_f64_u
    i64.popcnt
    i64.popcnt
    i32.wrap_i64
    i32.extend16_s
    i32.extend8_s
    local.get 0
    i64.trunc_f32_s
    i64.eqz
    i32.shr_s
    f64.convert_i32_u
    i64.trunc_f64_u
    i64.eqz
    i32.ctz
    i64.extend_i32_s
    i64.eqz
    f64.convert_i32_s
    i64.reinterpret_f64
    local.tee 1
    f64.convert_i64_s
    f64.floor
    f64.sqrt
    f64.floor
    ;;INSPECT
    f32.demote_f64
    drop
)

)