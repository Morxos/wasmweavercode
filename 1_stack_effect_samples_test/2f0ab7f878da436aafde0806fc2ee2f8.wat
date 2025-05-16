(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2361729466 (mut f32) (f32.const -1.4154084652616253e+18))
(global $global_1692859135 (mut f64) (f64.const 7.142283695420713e+18))
(func $run (export "run")
    (local i32 i32)
    (local $temp i32)
    (i32.const 415)
    f32.convert_i32_u
    f32.abs
    nop
    f32.floor
    f32.sqrt
    (i32.const -446594777)
    i32.eqz
    local.tee 0
    nop
    f64.convert_i32_s
    i64.trunc_f64_u
    local.get 0
    ;;INSPECT
    f32.convert_i32_u
    i32.reinterpret_f32
    f32.convert_i32_u
    i32.trunc_f32_s
    (i32.const -4900)
    f32.convert_i32_s
    f32.neg
    i32.trunc_f32_s
    i32.or
    local.tee 1
    f32.convert_i32_s
    global.set $global_2361729466
    i64.popcnt
    i64.clz
    i64.eqz
    i32.clz
    f64.convert_i32_u
    f64.ceil
    global.set $global_1692859135
    f32.trunc
    f32.trunc
    global.set $global_2361729466
)

)