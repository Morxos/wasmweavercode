(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_2240488424 (mut f64) (f64.const -3.954634208532992e+17))
(func $run (export "run") (result f64)
    (local i32)
    (local $temp i32)
    (i32.const 928)
    local.set 0
    (f64.const 2.1053306428932355e+273)
    (i32.const 2)
    f32.convert_i32_s
    i32.trunc_f32_u
    i32.ctz
    nop
    f64.convert_i32_u
    f64.gt
    drop
    global.get $global_2240488424
    f64.abs
)

)