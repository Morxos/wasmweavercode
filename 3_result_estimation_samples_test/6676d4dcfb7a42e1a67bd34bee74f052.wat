(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_704173881 (mut i32) (i32.const 1935612938))
(global $global_1117866904 (mut f64) (f64.const -7.054239325338526e+18))
(global $global_1158397148 (mut f32) (f32.const 7.176480508656746e+18))
(func $run (export "run") (result i32)
    (local $temp i32)
    (i32.const -1417046524)
    global.set $global_704173881
    global.get $global_704173881
    f32.reinterpret_i32
    f32.ceil
    i64.trunc_f32_s
    i64.ctz
    f64.convert_i64_u
    global.set $global_1117866904
    (i32.const 599)
    (f32.const 5.667550495599246e+27)
    global.set $global_1158397148
    i32.extend8_s
)

)