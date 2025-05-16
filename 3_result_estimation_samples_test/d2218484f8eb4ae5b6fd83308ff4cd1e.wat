(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_2093515776 (mut i64) (i64.const 659345459158932508))
(func $run (export "run") (result f64)
    (local i64 i32)
    (local $temp i32)
    (f32.const 196.8100128173828)
    f64.promote_f32
    global.get $global_2093515776
    local.tee 0
    i64.clz
    i64.extend16_s
    i64.extend8_s
    i64.extend16_s
    f64.convert_i64_u
    (i64.const -8)
    i64.extend16_s
    i64.extend16_s
    local.set 0
    (i64.const -419700255)
    local.get 0
    i64.le_s
    local.set 1
    f64.div
)

)