(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_702879170 (mut f64) (f64.const -8.3997214650774e+18))
(func $run (export "run") (result f32)
    (local i64)
    (local $temp i32)
    local.get 0
    f64.convert_i64_u
    global.set $global_702879170
    (f32.const -27926.212890625)
    f32.nearest
)

)