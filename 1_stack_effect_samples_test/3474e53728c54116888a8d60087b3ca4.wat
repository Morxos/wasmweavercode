(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2343801070 (mut i32) (i32.const 900643004))
(global $global_1604106900 (mut i64) (i64.const 3399091997370567870))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    global.get $global_2343801070
    f32.convert_i32_u
    local.tee 0
    i32.trunc_f32_u
    global.set $global_2343801070
    local.get 0
    (i32.const -397827700)
    f32.reinterpret_i32
    f32.mul
    drop
    local.get 0
    i64.trunc_f32_u
    ;;INSPECT
    (i32.const 44344374)
    f32.convert_i32_u
    i32.reinterpret_f32
    f32.convert_i32_u
    local.set 0
    nop
    i64.clz
    global.set $global_1604106900
    local.get 0
    i32.trunc_f32_u
    global.set $global_2343801070
    (i32.const -7)
    global.set $global_2343801070
)

)