(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_826901086 (mut i32) (i32.const 748373333))
(func $run (export "run") (result f32)
    (local $temp i32)
    global.get $global_826901086
    i32.clz
    i32.eqz
    i32.extend16_s
    f32.convert_i32_s
)

)