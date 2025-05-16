(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_2262769641 (mut i64) (i64.const 1502106973549033360))
(global $global_3465427858 (mut f32) (f32.const 5.487707614206755e+18))
(func $run (export "run") (result f32)
    (local i64)
    (local $temp i32)
    (i32.const 3633)
    f32.reinterpret_i32
    i64.trunc_f32_u
    local.tee 0
    global.set $global_2262769641
    nop
    (f32.const -1.9605307389532646e-21)
    global.set $global_3465427858
    nop
    global.get $global_2262769641
    f32.convert_i64_u
    return
)

)