(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_3226135549 (mut f32) (f32.const 4.894316032103023e+18))
(func $run (export "run") (result f32)
    (local f32)
    (local $temp i32)
    (f64.const 4.222711885562851e+131)
    drop
    (f32.const -8.338294719578698e-06)
    local.tee 0
    local.set 0
    (i32.const 8708)
    i32.extend16_s
    f32.convert_i32_s
    f32.abs
    (f64.const 4.60782759134992e+179)
    f64.trunc
    f64.trunc
    drop
    global.set $global_3226135549
    local.get 0
)

)