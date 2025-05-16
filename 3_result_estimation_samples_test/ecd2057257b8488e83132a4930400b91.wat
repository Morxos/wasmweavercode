(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(global $global_1736637036 (mut f32) (f32.const 9.144379273224651e+18))
(global $global_2833930060 (mut f64) (f64.const 1.6102501839963197e+18))
(func $run (export "run") (result i64)
    (local $temp i32)
    (f32.const 1.8109429511525832e-09)
    i64.trunc_f32_u
    (f64.const 3.410190328894445e+108)
    global.get $global_1736637036
    drop
    f64.floor
    global.get $global_1736637036
    drop
    f64.neg
    f64.nearest
    global.set $global_2833930060
)

)