(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_894445464 (mut i64) (i64.const -963981107169631797))
(func $run (export "run")
    (local i64 i32)
    (local $temp i32)
    ;;FLAG_0
    local.get 0
    (f64.const 3.712818209118973e-19)
    i32.trunc_f64_u
    f32.convert_i32_u
    i32.reinterpret_f32
    local.get 0
    i32.wrap_i64
    i32.extend8_s
    i32.gt_s
    i32.popcnt
    i32.extend8_s
    i32.clz
    local.tee 1
    local.set 1
    i64.ctz
    f64.convert_i64_s
    i64.trunc_f64_u
    i64.ctz
    nop
    f64.reinterpret_i64
    i64.trunc_f64_s
    global.set $global_894445464
)

)