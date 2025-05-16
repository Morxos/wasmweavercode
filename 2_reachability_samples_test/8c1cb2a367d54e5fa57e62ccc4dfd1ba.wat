(module
(type $sig_function_519140473 (func (param f64)))
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1795888207 f32 (f32.const -5.146023312039608e+17))
(global $global_1447855087 (mut f32) (f32.const 5.133730291004735e+18))
(func $function_519140473 (export "function_519140473") (param f64)
    (local f32)
    (local $temp i32)
    ;;FLAG_0
    global.get $global_1795888207
    local.set 1
    (i32.const -3992022)
    drop
    (i32.const -9446539)
    (br_table 0)
    ;;FLAG_1
    nop
)
(func $run (export "run")
    (local f32)
    (local $temp i32)
    ;;FLAG_2
    global.get $global_1795888207
    drop
    nop
    global.get $global_1795888207
    f32.floor
    global.set $global_1447855087
    (i32.const -93)
    f64.convert_i32_s
    call $function_519140473
    global.get $global_1795888207
    (i32.const 26)
    drop
    drop
    global.get $global_1795888207
    local.set 0
)

)