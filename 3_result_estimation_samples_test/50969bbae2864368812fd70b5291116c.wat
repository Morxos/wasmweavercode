(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_3625943601 (mut i64) (i64.const 4728443635965192913))
(func $run (export "run") (result i32)
    (local f64)
    (local $temp i32)
    global.get $global_3625943601
    i64.eqz
    i32.extend8_s
    drop
    local.get 0
    i64.reinterpret_f64
    i64.popcnt
    f64.convert_i64_s
    i32.trunc_f64_s
)

)