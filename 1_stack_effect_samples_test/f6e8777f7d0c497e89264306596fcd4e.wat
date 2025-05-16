(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_103607549 (mut i32) (i32.const -136668756))
(func $run (export "run")
    (local f32 i32)
    (local $temp i32)
    local.get 0
    f32.abs
    i32.trunc_f32_s
    i32.extend16_s
    i32.extend16_s
    i64.extend_i32_u
    i64.popcnt
    i64.popcnt
    f64.reinterpret_i64
    i64.reinterpret_f64
    i64.ctz
    f32.convert_i64_s
    (i64.const 67)
    i64.eqz
    f32.convert_i32_u
    i32.reinterpret_f32
    i32.clz
    i32.extend16_s
    i32.clz
    global.set $global_103607549
    f32.sqrt
    i32.reinterpret_f32
    local.tee 1
    global.set $global_103607549
    nop
    local.get 0
    i32.reinterpret_f32
    i32.extend8_s
    ;;INSPECT
    i32.extend8_s
    global.set $global_103607549
)

)