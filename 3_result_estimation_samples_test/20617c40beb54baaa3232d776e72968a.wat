(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result f32)
    (local i64)
    (local $temp i32)
    (i64.const 80175)
    local.set 0
    (i32.const 1073003)
    local.get 0
    local.set 0
    i32.extend8_s
    f32.reinterpret_i32
    f32.trunc
)

)