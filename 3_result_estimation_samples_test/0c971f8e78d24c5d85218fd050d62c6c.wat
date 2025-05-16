(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(global $global_2584315684 (mut f64) (f64.const -3.510794726487032e+18))
(global $global_1359445475 (mut i64) (i64.const -7710030554551082565))
(func $run (export "run") (result i64)
    (local $temp i32)
    (i32.const -691525)
    f64.convert_i32_s
    global.set $global_2584315684
    (f64.const 1.8006893308912408e-76)
    (i64.const -4338)
    global.set $global_1359445475
    i64.trunc_f64_u
)

)