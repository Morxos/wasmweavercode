(module
(type $sig_function_697983569 (func (param i64)))
(type $sig_function_1358147737 (func))
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_233596690 (mut i64) (i64.const 7646097527332748232))
(func $function_697983569 (export "function_697983569") (param i64)
    (local f32)
    (local $temp i32)
    (f32.const 7.876367360001107e-30)
    local.tee 1
    f64.promote_f32
    i64.trunc_f64_u
    global.set $global_233596690
    br 0
)
(func $function_1358147737 (export "function_1358147737")
    (local f64 f32)
    (local $temp i32)
    (i64.const -87)
    f32.convert_i64_u
    local.get 0
    f64.trunc
    f32.demote_f64
    local.set 1
    (i64.const -72416)
    global.set $global_233596690
    local.get 0
    i64.reinterpret_f64
    call $function_697983569
    f32.sqrt
    local.set 1
)
(func $run (export "run") (result f64)
    (local f32 i64)
    (local $temp i32)
    (f32.const -177.94773864746094)
    local.set 0
    global.get $global_233596690
    local.tee 1
    call $function_1358147737
    f64.reinterpret_i64
    f64.ceil
)

)