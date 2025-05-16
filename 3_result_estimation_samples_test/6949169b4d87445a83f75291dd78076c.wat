(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_788437287 (mut i32) (i32.const -1699259641))
(global $global_1209115511 (mut f32) (f32.const 7.227863435801788e+18))
(func $run (export "run") (result i32)
    (local f32 i32 f64)
    (local $temp i32)
    (i32.const 3)
    f32.convert_i32_u
    f32.trunc
    f32.nearest
    (i64.const 139)
    global.get $global_788437287
    i32.extend16_s
    i32.popcnt
    local.get 0
    i64.trunc_f32_u
    (i32.const 9312968)
    i32.clz
    i32.extend8_s
    i32.eqz
    f32.convert_i32_u
    drop
    local.get 0
    i32.trunc_f32_u
    local.set 1
    (f64.const 1.4589555902466156e-265)
    local.set 2
    f32.convert_i64_u
    f32.abs
    local.set 0
    i64.extend_i32_u
    i64.lt_u
    local.set 1
    global.set $global_1209115511
    (i32.const 941)
    (f32.const -1.340282693465483e+28)
    (i32.const -5573)
    f32.reinterpret_i32
    f32.min
    local.set 0
)

)