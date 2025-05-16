(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_2525111489 (mut f32) (f32.const -3.949338392788992e+16))
(global $global_3470557888 (mut i32) (i32.const -1377375166))
(func $run (export "run") (result f64)
    (local i64)
    (local $temp i32)
    (i32.const 7544778)
    drop
    (f32.const -2.141194677982495e-26)
    f32.nearest
    global.set $global_2525111489
    (i64.const -93)
    drop
    (i64.const -47060)
    local.set 0
    nop
    (i64.const -879)
    f32.convert_i64_s
    global.set $global_2525111489
    local.get 0
    local.get 0
    nop
    i64.gt_s
    global.set $global_3470557888
    nop
    (f64.const 7.063266427467801e+111)
)

)