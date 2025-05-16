(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_777406353 i32 (i32.const 969235473))
(global $global_3279841205 (mut i32) (i32.const -1094278048))
(func $run (export "run") (result f32)
    (local $temp i32)
    nop
    (i32.const 2920)
    f64.convert_i32_u
    f64.neg
    i32.trunc_f64_s
    i32.extend8_s
    drop
    (i64.const -80)
    drop
    (f64.const 2.0361205513211682e+186)
    global.get $global_777406353
    f32.convert_i32_u
    (f32.const 1.7121830069299904e-06)
    f32.le
    global.set $global_3279841205
    drop
    global.get $global_777406353
    f32.reinterpret_i32
)

)