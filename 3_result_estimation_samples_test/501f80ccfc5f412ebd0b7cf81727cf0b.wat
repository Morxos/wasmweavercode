(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_3157481723 (mut f32) (f32.const 4.644735688690893e+18))
(global $global_2450645244 (mut i64) (i64.const 8963744970191734320))
(global $global_1732627791 (mut f64) (f64.const -1.209967727325653e+18))
(func $run (export "run") (result i32)
    (local f64)
    (local $temp i32)
    (i64.const 186809)
    i64.extend8_s
    f64.reinterpret_i64
    local.set 0
    (i32.const 1521)
    local.get 0
    f64.neg
    global.get $global_3157481723
    i64.trunc_f32_s
    global.set $global_2450645244
    f64.trunc
    global.set $global_1732627791
    i32.clz
)

)