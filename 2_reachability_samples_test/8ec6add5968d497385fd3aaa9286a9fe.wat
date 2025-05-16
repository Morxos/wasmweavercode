(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f64)
    (local $temp i32)
    ;;FLAG_0
    (f64.const 4.2151798546249603e+176)
    local.set 0
    (f64.const 1.1165440986440344e-230)
    (f32.const 6.028793771378482e-39)
    i32.trunc_f32_u
    f32.convert_i32_u
    i32.trunc_f32_u
    nop
    f64.convert_i32_s
    f64.copysign
    local.get 0
    (f64.const 6.597666998548878e+152)
    f64.mul
    f64.le
    f32.convert_i32_s
    i32.trunc_f32_u
    f64.convert_i32_s
    i32.trunc_f64_s
    (br_table 0)
    ;;FLAG_1
    br 0
)

)