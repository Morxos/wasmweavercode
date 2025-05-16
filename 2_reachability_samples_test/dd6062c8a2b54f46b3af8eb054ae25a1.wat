(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1681247997 (mut i32) (i32.const -958965199))
(func $run (export "run")
    (local f32 i32)
    (local $temp i32)
    ;;FLAG_0
    (f64.const 1.1768132800404286e-99)
    f64.neg
    f32.demote_f64
    drop
    (f32.const -2.058788295670845e-26)
    f32.ceil
    i32.trunc_f32_u
    global.get $global_1681247997
    i32.clz
    i32.shl
    f32.reinterpret_i32
    local.tee 0
    drop
    global.get $global_1681247997
    local.set 1
    global.get $global_1681247997
    global.set $global_1681247997
    (i32.const -12063021)
    (br_table 0)
    ;;FLAG_1
    (i32.const 1191392616)
    (br_table 0)
    ;;FLAG_2
)

)