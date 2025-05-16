(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_754876141 (mut i64) (i64.const -3168985693952644372))
(global $global_2025529882 (mut f64) (f64.const -7.592504817741558e+17))
(func $run (export "run")
    (local i32 i64 f32)
    (local $temp i32)
    local.get 0
    i64.extend_i32_s
    i64.popcnt
    local.tee 1
    i64.extend32_s
    global.set $global_754876141
    ;;INSPECT
    (f32.const -7.355401621111923e-09)
    f32.abs
    (f32.const 2.3453996064702464e+16)
    f32.trunc
    f32.max
    f64.promote_f32
    global.set $global_2025529882
    local.get 0
    global.get $global_754876141
    i32.wrap_i64
    f32.convert_i32_u
    f32.trunc
    f32.trunc
    f32.trunc
    f32.trunc
    f32.trunc
    local.set 2
    local.set 0
)

)