(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1431423535 (mut i64) (i64.const 8140399427924118688))
(func $run (export "run")
    (local i64)
    (local $temp i32)
    (i32.const 378878761)
    i32.popcnt
    f32.convert_i32_u
    i32.reinterpret_f32
    i32.ctz
    i64.extend_i32_s
    i64.eqz
    i32.extend8_s
    i64.extend_i32_s
    ;;INSPECT
    i64.ctz
    f64.convert_i64_s
    drop
    (f32.const 2.232667989290199e-13)
    (i32.const -985018)
    i64.extend_i32_u
    global.set $global_1431423535
    global.get $global_1431423535
    i64.popcnt
    local.tee 0
    i32.wrap_i64
    f32.convert_i32_u
    f32.trunc
    f32.trunc
    f32.eq
    f32.reinterpret_i32
    f32.trunc
    i64.trunc_f32_u
    i32.wrap_i64
    i32.eqz
    drop
)

)