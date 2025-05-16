(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2607779103 i64 (i64.const 7410902557930984814))
(global $global_3944935981 (mut f32) (f32.const 7.727638199870161e+18))
(global $global_2564303644 (mut i32) (i32.const -147777289))
(func $run (export "run")
    (local i64 i32)
    (local $temp i32)
    global.get $global_2607779103
    (i32.const -17773854)
    ;;INSPECT
    f32.convert_i32_u
    global.get $global_2607779103
    local.set 0
    global.set $global_3944935981
    i64.extend8_s
    (i32.const 40337906)
    f32.convert_i32_u
    i32.trunc_f32_u
    nop
    global.set $global_2564303644
    global.get $global_2607779103
    i64.div_u
    i64.eqz
    f32.reinterpret_i32
    f32.floor
    i32.reinterpret_f32
    local.set 1
)

)