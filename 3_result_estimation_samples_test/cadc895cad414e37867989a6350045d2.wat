(module
(type $sig_function_2713208886 (func (param f64) (result f32)))
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_3162756267 (mut i32) (i32.const 867435310))
(func $function_2713208886 (export "function_2713208886") (param f64) (result f32)
    (local i32)
    (local $temp i32)
    (i32.const 12510619)
    local.set 1
    (i64.const 8194)
    i64.extend32_s
    i64.clz
    f32.convert_i64_u
)
(func $run (export "run") (result f32)
    (local f64)
    (local $temp i32)
    global.get $global_3162756267
    i32.clz
    f32.convert_i32_s
    i32.trunc_f32_s
    nop
    f64.convert_i32_s
    (i64.const -5143618)
    i64.eqz
    (f64.const 8.741965644270695e+283)
    drop
    f32.convert_i32_s
    f32.abs
    f32.nearest
    i32.trunc_f32_s
    i32.extend8_s
    (f32.const -4.443065932912438e+31)
    global.get $global_3162756267
    f32.convert_i32_s
    f32.min
    f64.promote_f32
    local.set 0
    i64.extend_i32_u
    drop
    i32.trunc_f64_s
    f64.convert_i32_u
    i64.trunc_f64_s
    f64.convert_i64_s
    f64.floor
    i32.trunc_f64_s
    nop
    f64.convert_i32_u
    f64.trunc
    f64.nearest
    call $function_2713208886
)

)