(module
(type $sig_function_1042998896 (func (param i64) (result f32)))
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3270594281 (mut f64) (f64.const 5.981956128237015e+17))
(func $function_1042998896 (export "function_1042998896") (param i64) (result f32)
    (local $temp i32)
    ;;FLAG_0
    nop
    (i32.const 52)
    i64.extend_i32_s
    (f32.const 555993.625)
    f32.nearest
    i32.trunc_f32_u
    f32.reinterpret_i32
    nop
    i64.trunc_f32_u
    i64.eq
    f32.convert_i32_s
)
(func $run (export "run")
    (local f32)
    (local $temp i32)
    ;;FLAG_1
    global.get $global_3270594281
    f32.demote_f64
    f32.sqrt
    i32.reinterpret_f32
    i64.extend_i32_s
    call $function_1042998896
    f32.floor
    local.set 0
    nop
)

)