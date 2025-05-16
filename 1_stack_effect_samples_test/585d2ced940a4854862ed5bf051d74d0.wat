(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1436642437 (mut f32) (f32.const -1.416316249549308e+18))
(global $global_1155858254 (mut i64) (i64.const -904370641004287289))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    (f32.const -7.134439291372332e-25)
    i32.trunc_f32_s
    f32.convert_i32_s
    i32.reinterpret_f32
    (f32.const 635750.8125)
    nop
    local.tee 0
    i32.reinterpret_f32
    i32.div_s
    i32.extend8_s
    local.get 0
    i32.trunc_f32_u
    i32.div_s
    f32.convert_i32_s
    i64.trunc_f32_u
    i64.popcnt
    i32.wrap_i64
    i32.extend8_s
    f32.convert_i32_s
    local.get 0
    f32.lt
    i32.extend16_s
    f32.reinterpret_i32
    ;;INSPECT
    i32.reinterpret_f32
    i64.extend_i32_u
    (f32.const 1.3812043535286394e+22)
    global.set $global_1436642437
    global.set $global_1155858254
)

)