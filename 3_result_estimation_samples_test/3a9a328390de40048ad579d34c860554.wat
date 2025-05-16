(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_647372413 (mut f64) (f64.const 4.5038541639759974e+18))
(global $global_98961876 (mut i32) (i32.const -298118845))
(func $run (export "run") (result f32)
    (local i32 f64 i64)
    (local $temp i32)
    global.get $global_647372413
    (i64.const 81853637)
    (f64.const 8.727369767668259e-162)
    global.set $global_647372413
    i32.wrap_i64
    nop
    (i64.const -4926027)
    i64.extend16_s
    (i64.const 6013)
    i64.ctz
    i64.le_u
    i32.rotl
    global.set $global_98961876
    f64.sqrt
    i32.trunc_f64_s
    local.set 0
    (f64.const 4.773071673604648e+271)
    i64.reinterpret_f64
    f64.convert_i64_s
    local.set 1
    (i64.const -8)
    local.set 2
    (f64.const 4.237593585086838e-171)
    global.set $global_647372413
    (f32.const -3.0231999087297623e-13)
)

)