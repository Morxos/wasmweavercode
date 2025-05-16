(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1123037631 (mut i32) (i32.const -402340609))
(func $run (export "run")
    (local i32 f32)
    (local $temp i32)
    (i64.const -97)
    nop
    i64.ctz
    i64.eqz
    f32.convert_i32_s
    f32.nearest
    ;;INSPECT
    i32.reinterpret_f32
    i32.ctz
    i32.ctz
    i32.extend8_s
    local.tee 0
    f32.convert_i32_s
    i64.trunc_f32_u
    i64.ctz
    f32.convert_i64_s
    local.tee 1
    i64.trunc_f32_u
    i64.popcnt
    f64.convert_i64_s
    i64.trunc_f64_u
    i64.eqz
    f32.convert_i32_u
    f32.nearest
    f32.sqrt
    (f32.const 3.7445734792421336e-19)
    f32.copysign
    drop
    (f32.const 9.836364337868964e+17)
    i32.reinterpret_f32
    global.set $global_1123037631
)

)