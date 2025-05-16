(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(global $global_1786367754 (mut i64) (i64.const -8625798057540705891))
(func $run (export "run") (result i64)
    (local f64)
    (local $temp i32)
    (f32.const -0.0032701888121664524)
    i32.reinterpret_f32
    f64.convert_i32_s
    local.set 0
    global.get $global_1786367754
)

)