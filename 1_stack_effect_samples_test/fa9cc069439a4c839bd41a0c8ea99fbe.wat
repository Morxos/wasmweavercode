(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2639307529 (mut i32) (i32.const -1078115968))
(func $run (export "run")
    (local i64 i32 i32)
    (local $temp i32)
    local.get 0
    i64.ctz
    i64.eqz
    f32.convert_i32_u
    i32.reinterpret_f32
    i32.extend8_s
    i64.extend_i32_s
    i64.eqz
    i32.popcnt
    ;;INSPECT
    i32.extend8_s
    i32.extend16_s
    local.tee 1
    f32.convert_i32_s
    f32.nearest
    f32.abs
    f32.ceil
    i32.reinterpret_f32
    f32.convert_i32_s
    f64.promote_f32
    f64.nearest
    i32.trunc_f64_u
    global.set $global_2639307529
    global.get $global_2639307529
    local.tee 2
    global.set $global_2639307529
)

)