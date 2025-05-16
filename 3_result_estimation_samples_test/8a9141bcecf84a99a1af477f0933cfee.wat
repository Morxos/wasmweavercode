(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_227159687 (mut i64) (i64.const -6560276581901864623))
(func $run (export "run") (result f64)
    (local i64 i64 f32)
    (local $temp i32)
    local.get 0
    local.tee 1
    local.set 0
    global.get $global_227159687
    i64.ctz
    f32.convert_i64_s
    local.set 2
    global.get $global_227159687
    i64.extend16_s
    i64.extend16_s
    local.set 0
    local.get 0
    drop
    nop
    (f64.const 2.1575525393555318e+52)
)

)