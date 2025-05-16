(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_513315582 (mut f64) (f64.const -4.910420810614563e+18))
(func $run (export "run")
    (local i32 i32 i32 i64)
    (local $temp i32)
    (f32.const 32.565765380859375)
    i32.reinterpret_f32
    f32.convert_i32_s
    f32.abs
    f32.sqrt
    nop
    nop
    ;;INSPECT
    f32.sqrt
    f32.floor
    f32.floor
    f32.sqrt
    f32.sqrt
    local.get 0
    i64.extend_i32_s
    global.get $global_513315582
    f64.floor
    f64.floor
    f64.floor
    f64.floor
    f64.nearest
    drop
    i64.ctz
    f64.convert_i64_s
    i64.reinterpret_f64
    f64.reinterpret_i64
    i64.trunc_f64_s
    f32.convert_i64_u
    i32.trunc_f32_s
    local.tee 1
    nop
    local.tee 2
    i64.extend_i32_s
    local.tee 3
    f64.convert_i64_s
    global.set $global_513315582
    i32.reinterpret_f32
    i32.clz
    i64.extend_i32_u
    drop
)

)