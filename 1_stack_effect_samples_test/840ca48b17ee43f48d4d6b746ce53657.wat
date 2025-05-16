(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_921408886 (mut i64) (i64.const 5676643429947803464))
(global $global_2432570980 (mut f32) (f32.const -3.794923151582822e+16))
(func $run (export "run")
    (local i64)
    (local $temp i32)
    global.get $global_921408886
    nop
    local.tee 0
    global.set $global_921408886
    nop
    local.get 0
    (i64.const 296064)
    i64.div_s
    global.set $global_921408886
    local.get 0
    i64.extend8_s
    i64.eqz
    global.get $global_921408886
    drop
    f32.convert_i32_u
    i32.reinterpret_f32
    f32.convert_i32_u
    i32.trunc_f32_u
    f32.convert_i32_u
    i32.reinterpret_f32
    f32.reinterpret_i32
    i32.reinterpret_f32
    f32.convert_i32_u
    f32.sqrt
    f32.floor
    (i32.const -6)
    local.get 0
    nop
    ;;INSPECT
    i64.eqz
    i32.lt_u
    i64.extend_i32_u
    global.set $global_921408886
    global.set $global_2432570980
)

)