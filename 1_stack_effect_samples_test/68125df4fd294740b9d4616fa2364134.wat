(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3419660888 (mut i32) (i32.const 463767549))
(global $global_1606056656 (mut f32) (f32.const 1.4977853882430915e+18))
(func $run (export "run")
    (local f32 i64 f32)
    (local $temp i32)
    nop
    local.get 0
    i64.trunc_f32_u
    local.tee 1
    global.get $global_3419660888
    global.set $global_3419660888
    f32.convert_i64_s
    f32.trunc
    i64.trunc_f32_u
    global.get $global_3419660888
    ;;INSPECT
    f32.convert_i32_u
    i64.trunc_f32_s
    i64.rem_s
    global.get $global_3419660888
    f32.convert_i32_s
    local.tee 2
    i32.trunc_f32_u
    f32.convert_i32_u
    i32.reinterpret_f32
    f32.convert_i32_u
    i32.trunc_f32_u
    f32.convert_i32_s
    i32.trunc_f32_u
    drop
    i32.wrap_i64
    i32.extend16_s
    i32.clz
    f32.convert_i32_u
    local.set 0
    local.get 0
    f32.floor
    global.set $global_1606056656
)

)