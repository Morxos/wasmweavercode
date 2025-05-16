(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result f32)
    (local f32)
    (local $temp i32)
    (f32.const 3.651985900693854e-34)
    f32.floor
    i32.reinterpret_f32
    f32.reinterpret_i32
    local.set 0
    (f32.const -2.2034902673672877e-38)
)

)