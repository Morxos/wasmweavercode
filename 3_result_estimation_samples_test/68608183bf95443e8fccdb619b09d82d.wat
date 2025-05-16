(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result f32)
    (local $temp i32)
    nop
    (i32.const -39861243)
    i32.clz
    i32.eqz
    f32.reinterpret_i32
    br 0
)

)