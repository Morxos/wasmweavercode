(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(global $global_1311509254 (mut i32) (i32.const 1217013115))
(func $run (export "run") (result i64)
    (local i64)
    (local $temp i32)
    global.get $global_1311509254
    i32.clz
    f32.reinterpret_i32
    i64.trunc_f32_s
    local.set 0
    (i64.const -34)
)

)