(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result f32)
    (local f32 f64)
    (local $temp i32)
    (f32.const -554382.25)
    local.set 0
    (f32.const -76865527808.0)
    local.set 0
    local.get 0
    i32.reinterpret_f32
    f64.convert_i32_u
    local.set 1
    (f32.const -1.0805897307677321e-38)
)

)