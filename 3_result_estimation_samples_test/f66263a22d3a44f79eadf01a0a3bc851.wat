(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(global $global_3640916283 (mut i64) (i64.const -349129144973039893))
(func $run (export "run") (result i64)
    (local $temp i32)
    (i64.const 69)
    f32.convert_i64_s
    f64.promote_f32
    f32.demote_f64
    drop
    global.get $global_3640916283
)

)