(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_750953012 (mut i64) (i64.const -8903927890329990411))
(func $run (export "run") (result i32)
    (local i64 i64 f32)
    (local $temp i32)
    (f64.const 1.3264198215490462e-91)
    (i64.const -63666)
    local.tee 0
    nop
    local.tee 1
    i64.extend32_s
    global.set $global_750953012
    i64.reinterpret_f64
    (f32.const 164548.203125)
    f32.nearest
    local.set 2
    f32.convert_i64_s
    local.set 2
    (f32.const 7.176236827000082e-10)
    i64.trunc_f32_s
    i32.wrap_i64
    nop
    global.get $global_750953012
    i64.extend8_s
    i64.extend16_s
    f64.convert_i64_s
    f64.abs
    i64.reinterpret_f64
    local.set 0
)

)