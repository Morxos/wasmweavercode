(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_2831676319 f32 (f32.const 7.541711883124867e+18))
(func $run (export "run") (result i32)
    (local f32)
    (local $temp i32)
    (i32.const 9784901)
    global.get $global_2831676319
    local.tee 0
    i64.trunc_f32_s
    global.get $global_2831676319
    i64.trunc_f32_s
    i64.lt_u
    i64.extend_i32_s
    i64.eqz
    i32.shr_u
)

)