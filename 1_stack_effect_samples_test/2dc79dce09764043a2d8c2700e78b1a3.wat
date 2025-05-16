(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2995439758 (mut i32) (i32.const 1097037611))
(global $global_927465884 (mut f32) (f32.const -7.349760792415175e+18))
(func $run (export "run")
    (local i64 i32 i32)
    (local $temp i32)
    local.get 0
    i64.extend16_s
    f64.convert_i64_u
    i64.reinterpret_f64
    i64.extend32_s
    f64.convert_i64_s
    f32.demote_f64
    local.get 0
    f32.convert_i64_u
    f32.min
    i32.trunc_f32_u
    local.tee 1
    ;;INSPECT
    i32.ctz
    i64.extend_i32_s
    global.get $global_2995439758
    local.tee 2
    f32.convert_i32_u
    f64.promote_f32
    f32.demote_f64
    f64.promote_f32
    f64.nearest
    i64.trunc_f64_s
    i64.rem_u
    nop
    i64.eqz
    f32.convert_i32_s
    global.set $global_927465884
    (i32.const -721731)
    f32.reinterpret_i32
    i32.reinterpret_f32
    i64.extend_i32_u
    i32.wrap_i64
    i64.extend_i32_u
    i64.eqz
    f32.convert_i32_s
    i32.reinterpret_f32
    global.set $global_2995439758
)

)