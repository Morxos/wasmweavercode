(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2041973252 (mut i64) (i64.const 1284887000002458950))
(global $global_2764629414 (mut f32) (f32.const 8.677479906826781e+18))
(func $run (export "run")
    (local f32 i32 i64)
    (local $temp i32)
    ;;INSPECT
    local.get 0
    i32.reinterpret_f32
    local.set 1
    global.get $global_2041973252
    nop
    drop
    global.get $global_2041973252
    nop
    local.set 2
    nop
    (i32.const 4)
    f32.convert_i32_s
    global.set $global_2764629414
    local.get 0
    i32.trunc_f32_u
    (i32.const 954296609)
    i32.div_s
    f32.convert_i32_u
    f32.floor
    i32.reinterpret_f32
    (i32.const 1691)
    i32.div_s
    f32.convert_i32_u
    i32.reinterpret_f32
    f32.convert_i32_u
    i32.trunc_f32_u
    drop
    (i64.const 2)
    global.set $global_2041973252
)

)