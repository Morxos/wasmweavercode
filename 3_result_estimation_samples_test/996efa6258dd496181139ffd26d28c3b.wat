(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_1903759137 (mut i64) (i64.const 1485744430095843513))
(func $run (export "run") (result i32)
    (local i32)
    (local $temp i32)
    (i64.const 66428)
    global.set $global_1903759137
    local.get 0
    f32.convert_i32_u
    f64.promote_f32
    i64.trunc_f64_u
    i64.extend16_s
    i32.wrap_i64
    (i64.const 6036701)
    i64.extend8_s
    i64.extend32_s
    i64.extend16_s
    i32.wrap_i64
    i32.gt_u
)

)