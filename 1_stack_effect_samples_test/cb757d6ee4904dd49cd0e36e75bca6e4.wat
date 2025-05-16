(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3361725405 (mut i32) (i32.const -1763114451))
(global $global_3926255595 (mut i64) (i64.const -8688213822937063575))
(func $run (export "run")
    (local i32 f32)
    (local $temp i32)
    nop
    global.get $global_3361725405
    i32.ctz
    f32.convert_i32_s
    i64.trunc_f32_u
    i64.ctz
    i64.ctz
    f64.reinterpret_i64
    i64.trunc_f64_u
    i64.clz
    f32.convert_i64_u
    i64.trunc_f32_s
    i32.wrap_i64
    local.tee 0
    f32.convert_i32_u
    local.set 1
    local.get 0
    f32.convert_i32_s
    local.get 0
    local.get 0
    i32.div_s
    global.set $global_3361725405
    f32.trunc
    f32.sqrt
    f32.abs
    i64.trunc_f32_u
    i64.popcnt
    i64.popcnt
    i32.wrap_i64
    i32.extend8_s
    i64.extend_i32_u
    i64.popcnt
    i64.clz
    ;;INSPECT
    global.set $global_3926255595
)

)