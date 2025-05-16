(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_2747164030 (mut i64) (i64.const -3183865494724677668))
(global $global_626059222 (mut i32) (i32.const 184727971))
(func $run (export "run") (result f64)
    (local i32 f32 i64)
    (local $temp i32)
    nop
    (i64.const -337)
    i64.extend16_s
    (i32.const 886677)
    global.get $global_2747164030
    (f32.const -1.9875181747432016e-28)
    local.get 0
    local.set 0
    local.set 1
    local.set 2
    global.set $global_626059222
    f64.convert_i64_s
)

)