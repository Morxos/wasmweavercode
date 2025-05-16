(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(global $global_1021577467 (mut f32) (f32.const 2.242986540793856e+18))
(global $global_2393295865 (mut i32) (i32.const 277586054))
(func $run (export "run") (result i64)
    (local $temp i32)
    global.get $global_1021577467
    drop
    global.get $global_1021577467
    i64.trunc_f32_s
    (i32.const 63)
    i32.ctz
    global.set $global_2393295865
)

)