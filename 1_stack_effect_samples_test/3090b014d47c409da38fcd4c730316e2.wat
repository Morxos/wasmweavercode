(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3215518668 (mut i64) (i64.const -4345062068579558762))
(global $global_2075828532 (mut f32) (f32.const -2.579380886361342e+18))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    nop
    global.get $global_3215518668
    f32.convert_i64_u
    local.tee 0
    global.set $global_2075828532
    local.get 0
    (i32.const 432469107)
    f32.convert_i32_u
    f32.lt
    i32.clz
    i32.popcnt
    i32.extend8_s
    i32.clz
    f64.convert_i32_u
    i64.trunc_f64_s
    f64.reinterpret_i64
    i64.trunc_f64_u
    i64.eqz
    i32.clz
    ;;INSPECT
    f32.reinterpret_i32
    (f32.const 0.0)
    f32.mul
    i32.trunc_f32_u
    i32.clz
    f32.convert_i32_u
    i32.trunc_f32_u
    f32.convert_i32_u
    drop
)

)