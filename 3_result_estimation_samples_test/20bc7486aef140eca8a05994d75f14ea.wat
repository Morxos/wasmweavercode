(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_2422366003 (mut f32) (f32.const -1.0770020134153093e+18))
(func $run (export "run") (result f64)
    (local f32)
    (local $temp i32)
    (i64.const 38066)
    local.get 0
    global.set $global_2422366003
    i64.extend16_s
    i64.extend32_s
    i32.wrap_i64
    f32.convert_i32_s
    local.set 0
    (f64.const 2.4114177540833366e+64)
)

)