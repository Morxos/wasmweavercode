(module
(type $sig_function_4214893676 (func (param i32)))
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(global $global_1779539873 (mut f64) (f64.const 6.2304120713296e+18))
(global $global_1065292171 (mut i64) (i64.const 2666969683780247465))
(func $function_4214893676 (export "function_4214893676") (param i32)
    (local $temp i32)
    local.get 0
    i64.extend_i32_u
    (f64.const 3.2994003412053645e-237)
    global.set $global_1779539873
    global.set $global_1065292171
)
(func $run (export "run") (result i64)
    (local i32)
    (local $temp i32)
    global.get $global_1779539873
    (i32.const -3915)
    call $function_4214893676
    global.set $global_1779539873
    (i32.const 67932)
    i32.clz
    local.tee 0
    f64.convert_i32_s
    i64.reinterpret_f64
    local.get 0
    nop
    call $function_4214893676
)

)