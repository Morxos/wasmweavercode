(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_936056164 (mut i32) (i32.const 2111250948))
(func $run (export "run")
    (local i64 i64 i64 f32)
    (local $temp i32)
    ;;INSPECT
    local.get 0
    f64.reinterpret_i64
    i64.reinterpret_f64
    i64.popcnt
    f64.convert_i64_s
    f64.neg
    local.get 0
    local.tee 1
    i64.extend32_s
    local.tee 2
    f32.convert_i64_u
    f32.sqrt
    f32.nearest
    local.tee 3
    f64.promote_f32
    local.get 0
    i64.eqz
    i64.extend_i32_s
    i64.popcnt
    i64.clz
    i64.extend8_s
    i64.popcnt
    f64.convert_i64_s
    f64.ne
    i32.ctz
    i32.popcnt
    f64.convert_i32_u
    f64.sqrt
    f64.max
    f32.demote_f64
    f32.abs
    i64.trunc_f32_u
    i64.eqz
    nop
    f64.convert_i32_u
    f32.demote_f64
    i32.trunc_f32_u
    global.set $global_936056164
)

)