(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_703885676 (mut i32) (i32.const -63084197))
(func $run (export "run")
    (local f64 f32)
    (local $temp i32)
    (f32.const -2.272034407724277e-06)
    i32.reinterpret_f32
    (f32.const 11245484032.0)
    i64.trunc_f32_u
    i64.eqz
    i32.eqz
    i32.shr_s
    i32.clz
    ;;INSPECT
    i32.clz
    i32.ctz
    f32.convert_i32_u
    (f32.const -3.74723835294688e-10)
    i32.reinterpret_f32
    i32.popcnt
    i32.ctz
    f32.reinterpret_i32
    i64.trunc_f32_u
    f64.reinterpret_i64
    f64.sqrt
    local.tee 0
    i64.reinterpret_f64
    i32.wrap_i64
    f64.convert_i32_s
    i64.reinterpret_f64
    i32.wrap_i64
    i32.extend8_s
    i32.extend8_s
    global.set $global_703885676
    local.tee 1
    drop
)

)