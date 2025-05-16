(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_3394438677 (mut i32) (i32.const 982415493))
(func $run (export "run") (result i32)
    (local $temp i32)
    global.get $global_3394438677
    i32.clz
    f32.reinterpret_i32
    drop
    (f32.const -7.500954174351181e+36)
    i32.reinterpret_f32
)

)