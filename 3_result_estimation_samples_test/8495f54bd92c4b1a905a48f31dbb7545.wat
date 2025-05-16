(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result f32)
    (local f32)
    (local $temp i32)
    (i64.const -25298)
    nop
    i64.popcnt
    i64.extend8_s
    (i64.const -84884)
    i64.le_u
    i64.extend_i32_u
    drop
    nop
    local.get 0
)

)