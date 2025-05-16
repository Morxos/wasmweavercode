(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1454220735 (mut i32) (i32.const 405574003))
(global $global_1085961931 (mut i64) (i64.const 6250204517847318130))
(func $run (export "run")
    (local f32 f32 i32)
    (local $temp i32)
    local.get 0
    f32.ceil
    f32.abs
    local.tee 1
    f32.neg
    i32.reinterpret_f32
    i32.clz
    f64.convert_i32_s
    f64.sqrt
    f32.demote_f64
    i64.trunc_f32_u
    i64.ctz
    f32.convert_i64_u
    (f32.const -7.70655977190053e-30)
    f32.abs
    i32.reinterpret_f32
    ;;INSPECT
    local.tee 2
    i32.popcnt
    global.set $global_1454220735
    i32.reinterpret_f32
    f32.convert_i32_s
    (i64.const -9911949)
    i64.popcnt
    i64.extend8_s
    nop
    i64.extend8_s
    global.set $global_1085961931
    nop
    i32.reinterpret_f32
    global.set $global_1454220735
)

)