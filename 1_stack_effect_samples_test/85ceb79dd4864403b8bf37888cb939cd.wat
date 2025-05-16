(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2954727795 (mut i64) (i64.const -5802201996180268521))
(func $run (export "run")
    (local f32 i64 f64)
    (local $temp i32)
    local.get 0
    f32.abs
    f32.ceil
    f32.floor
    i64.trunc_f32_u
    f64.convert_i64_u
    f64.trunc
    f64.trunc
    i64.reinterpret_f64
    local.tee 1
    i64.eqz
    i64.extend_i32_s
    i64.popcnt
    global.set $global_2954727795
    nop
    local.get 0
    f32.ceil
    f64.promote_f32
    f64.nearest
    i32.trunc_f64_s
    i32.extend16_s
    i32.ctz
    i32.extend16_s
    i32.extend8_s
    i32.extend8_s
    i32.extend8_s
    global.get $global_2954727795
    f64.convert_i64_s
    f64.sqrt
    f64.sqrt
    ;;INSPECT
    f64.floor
    drop
    f64.convert_i32_s
    local.set 2
)

)