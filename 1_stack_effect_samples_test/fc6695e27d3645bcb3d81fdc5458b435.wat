(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3423557651 (mut i64) (i64.const 1282704690628556763))
(func $run (export "run")
    (local i32 i64)
    (local $temp i32)
    local.get 0
    (f32.const -9.234765954092046e-18)
    nop
    f32.trunc
    ;;INSPECT
    i32.reinterpret_f32
    i32.div_u
    i32.popcnt
    i32.extend8_s
    (f32.const 2.9877833540581378e-09)
    i64.trunc_f32_u
    i64.popcnt
    i64.ctz
    f32.convert_i64_u
    i64.trunc_f32_s
    local.tee 1
    i64.eqz
    i32.shr_s
    f32.convert_i32_s
    f32.ceil
    f32.trunc
    f32.ceil
    i64.trunc_f32_u
    f64.convert_i64_s
    i64.reinterpret_f64
    global.set $global_3423557651
    (f32.const -1.0742406152503668e-29)
    i32.reinterpret_f32
    i32.eqz
    i32.eqz
    i64.extend_i32_s
    f32.convert_i64_u
    drop
    nop
)

)