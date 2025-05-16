(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_3319905107 (mut i32) (i32.const 3690721))
(func $run (export "run") (result f32)
    (local f32 i32 f64)
    (local $temp i32)
    global.get $global_3319905107
    i32.clz
    f32.convert_i32_s
    (i64.const -466543485)
    f32.convert_i64_s
    f64.promote_f32
    (i32.const 0)
    (f32.const -1.1742063784629161e+20)
    local.set 0
    (f32.const 7.374224870506698e+24)
    f32.nearest
    f32.neg
    drop
    local.set 1
    f64.nearest
    local.set 2
)

)