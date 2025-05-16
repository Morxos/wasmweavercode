(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result f32)
    (local i32)
    (local $temp i32)
    local.get 0
    i32.clz
    (i32.const 1673594712)
    i32.rotl
    f32.convert_i32_s
)

)