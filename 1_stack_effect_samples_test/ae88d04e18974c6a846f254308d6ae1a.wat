(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1528276582 (mut i64) (i64.const 3782637514548699066))
(global $global_2950232619 (mut f32) (f32.const 2.438308871593263e+18))
(func $run (export "run")
    (local f64)
    (local $temp i32)
    (f32.const 6.9250910217754e+22)
    f64.promote_f32
    local.set 0
    (f32.const -24903.974609375)
    ;;INSPECT
    (i32.const 4277)
    i32.extend8_s
    f32.reinterpret_i32
    f32.ge
    f32.convert_i32_s
    i32.reinterpret_f32
    f32.convert_i32_u
    i64.trunc_f32_s
    i64.clz
    i64.popcnt
    i64.eqz
    i32.clz
    nop
    f32.reinterpret_i32
    local.get 0
    f64.nearest
    f64.floor
    f64.floor
    f64.sqrt
    f64.floor
    f64.nearest
    i64.trunc_f64_u
    i64.popcnt
    i64.popcnt
    i64.popcnt
    global.set $global_1528276582
    global.set $global_2950232619
)

)