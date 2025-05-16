(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2727500872 (mut i32) (i32.const 1044620599))
(func $run (export "run")
    (local i32 i32)
    (local $temp i32)
    ;;FLAG_0
    (f32.const 9.618892111916232e-34)
    f32.ceil
    i32.reinterpret_f32
    local.tee 0
    local.tee 1
    global.set $global_2727500872
    local.get 0
    (br_table 0)
    ;;FLAG_1
    br 0
)

)