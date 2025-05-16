(module
(type $sig_function_396592388 (func (param f64)))
(type $sig_function_963855368 (func))
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_637668814 (mut i32) (i32.const -80647780))
(global $global_4008449430 (mut i64) (i64.const 474443855594844848))
(func $function_396592388 (export "function_396592388") (param f64)
    (local $temp i32)
    (i64.const -656)
    global.set $global_4008449430
    (f32.const -2.4274682199239284e-13)
    f32.trunc
    i64.trunc_f32_s
    f32.convert_i64_s
    drop
    (f32.const -992745344.0)
    i32.trunc_f32_s
    br_if 0
)
(func $function_963855368 (export "function_963855368")
    (local i64 i32 f64)
    (local $temp i32)
    (i64.const -4186259607179793429)
    local.set 0
    (i32.const 97647052)
    i64.extend_i32_u
    i64.extend8_s
    global.set $global_4008449430
    (i64.const -481)
    (i64.const 64757)
    i64.add
    (f64.const 1.2065704526482555e+216)
    drop
    local.get 0
    i64.le_u
    i32.extend16_s
    i32.ctz
    i64.extend_i32_u
    f64.reinterpret_i64
    (f64.const 0.0)
    f64.min
    (f64.const 4.304488973625952e-166)
    (i32.const -1)
    local.set 1
    f64.copysign
    local.tee 2
    call $function_396592388
)
(func $run (export "run") (result f32)
    (local i32 f64)
    (local $temp i32)
    nop
    (i64.const -8589629)
    global.get $global_637668814
    local.set 0
    f64.convert_i64_s
    local.tee 1
    call $function_963855368
    local.set 1
    (i64.const -6)
    f64.reinterpret_i64
    local.get 0
    i64.extend_i32_u
    drop
    local.set 1
    (i64.const 8595249408990171496)
    f32.convert_i64_s
)

)