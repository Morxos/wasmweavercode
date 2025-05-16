(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_86942949 (mut i32) (i32.const 781791586))
(global $global_2372399969 (mut f64) (f64.const -2.8772276630526034e+18))
(global $global_3593427822 (mut i64) (i64.const -3155440677264392536))
(func $run (export "run")
    (local i32 i32)
    (local $temp i32)
    local.get 0
    f32.reinterpret_i32
    f32.neg
    global.get $global_86942949
    i64.extend_i32_s
    f64.reinterpret_i64
    global.set $global_2372399969
    f32.abs
    f32.nearest
    f32.floor
    i64.trunc_f32_u
    i64.extend16_s
    f64.convert_i64_s
    f64.nearest
    f64.sqrt
    nop
    i64.trunc_f64_s
    global.set $global_3593427822
    global.get $global_86942949
    global.get $global_86942949
    i32.lt_s
    f32.convert_i32_s
    f32.trunc
    f32.floor
    i64.trunc_f32_u
    global.get $global_86942949
    local.tee 1
    ;;INSPECT
    global.set $global_86942949
    i64.clz
    i64.clz
    global.set $global_3593427822
)

)