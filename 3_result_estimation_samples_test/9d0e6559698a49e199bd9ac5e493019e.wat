(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_367945051 (mut f32) (f32.const -6.012023477807088e+18))
(global $global_955009312 (mut i32) (i32.const -2118513902))
(func $run (export "run") (result f64)
    (local i32)
    (local $temp i32)
    (i32.const 8086775)
    local.get 0
    i32.rotl
    f32.convert_i32_u
    global.set $global_367945051
    (i32.const -510)
    global.set $global_955009312
    (i64.const -734)
    i64.popcnt
    i64.clz
    f64.reinterpret_i64
)

)