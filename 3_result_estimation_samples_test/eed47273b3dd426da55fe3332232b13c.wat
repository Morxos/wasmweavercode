(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(global $global_1017473261 (mut i64) (i64.const -6381068926174806309))
(global $global_3057935169 (mut f32) (f32.const -3.636364778764501e+18))
(func $run (export "run") (result i64)
    (local f64 f32)
    (local $temp i32)
    (f32.const -1.838049299665534e+34)
    global.get $global_1017473261
    f64.convert_i64_u
    local.set 0
    local.set 1
    (f32.const 0.0012257889611646533)
    global.set $global_3057935169
    (f32.const 0.00010697683319449425)
    i32.trunc_f32_s
    f32.convert_i32_u
    global.set $global_3057935169
    (i32.const 63)
    f32.convert_i32_s
    f32.neg
    i64.trunc_f32_s
)

)