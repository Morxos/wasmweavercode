(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result f32)
    (local i32)
    (local $temp i32)
    (i32.const 9)
    local.set 0
    nop
    (i64.const -4539)
    f32.convert_i64_s
)

)