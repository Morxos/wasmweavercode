(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3362586758 (mut i32) (i32.const -82758959))
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_0
    (f64.const 4.7171150426058965e-201)
    i32.trunc_f64_u
    global.set $global_3362586758
    global.get $global_3362586758
    i64.extend_i32_u
    f32.convert_i64_s
    f32.ceil
    i64.trunc_f32_u
    (f64.const 0.0)
    i64.trunc_f64_u
    i64.gt_s
    (br_table 0)
    ;;FLAG_1
    nop
    (f64.const 1.7618488405604956e-159)
    (f64.const 4.722918547721777e+158)
    f64.le
    (br_table 0)
    ;;FLAG_2
    br 0
)

)