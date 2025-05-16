(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_398362830 (mut i32) (i32.const 496493739))
(func $run (export "run") (result i32)
    (local f64)
    (local $temp i32)
    (i32.const -3863875)
    global.set $global_398362830
    global.get $global_398362830
    drop
    nop
    (i64.const 66187)
    i32.wrap_i64
    f64.convert_i32_u
    local.set 0
    global.get $global_398362830
)

)