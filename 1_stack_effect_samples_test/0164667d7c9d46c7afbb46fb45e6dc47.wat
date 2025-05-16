(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2343140726 (mut f32) (f32.const -7.871238266748404e+18))
(global $global_3470191943 (mut i32) (i32.const 908201834))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    global.get $global_2343140726
    f32.neg
    f32.trunc
    local.tee 0
    f32.abs
    f32.nearest
    f32.abs
    global.set $global_2343140726
    (i32.const -2)
    f32.convert_i32_u
    ;;INSPECT
    f32.sqrt
    (i64.const -2592281)
    i64.clz
    nop
    (f32.const -3.951267493016646e+26)
    local.get 0
    f32.lt
    f32.convert_i32_u
    i32.trunc_f32_u
    f32.convert_i32_u
    i32.trunc_f32_u
    f32.convert_i32_u
    global.set $global_2343140726
    i64.eqz
    global.set $global_3470191943
    global.set $global_2343140726
)

)