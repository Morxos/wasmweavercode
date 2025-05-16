(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_285197797 (mut i32) (i32.const -481462105))
(func $run (export "run") (result f32)
    (local i32 i64)
    (local $temp i32)
    (i32.const 902229674)
    local.set 0
    local.get 0
    i32.ctz
    global.set $global_285197797
    local.get 0
    i64.extend_i32_s
    local.tee 1
    i64.extend8_s
    f32.convert_i64_u
)

)