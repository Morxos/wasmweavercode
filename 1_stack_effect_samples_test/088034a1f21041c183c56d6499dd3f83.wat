(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1121559541 (mut i32) (i32.const -150610074))
(global $global_315467589 (mut f64) (f64.const 2.366962593414312e+18))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    (f32.const 1.9089720776090166e-22)
    f32.floor
    i64.trunc_f32_s
    f64.convert_i64_s
    i64.reinterpret_f64
    f64.convert_i64_s
    f64.trunc
    f64.trunc
    f64.abs
    f64.sqrt
    f64.trunc
    (f32.const -132275.421875)
    f32.neg
    i32.reinterpret_f32
    local.tee 0
    nop
    local.get 0
    i32.div_s
    i32.clz
    i32.clz
    i32.extend8_s
    f32.convert_i32_u
    i32.reinterpret_f32
    i32.extend16_s
    (i32.const -28)
    ;;INSPECT
    i32.div_s
    f32.convert_i32_u
    i32.reinterpret_f32
    i32.clz
    i32.clz
    i32.clz
    i32.clz
    global.set $global_1121559541
    f64.nearest
    global.set $global_315467589
)

)