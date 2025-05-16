(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    ;;FLAG_0
    (f32.const 4.4685841191414556e-20)
    (i64.const -560132987)
    nop
    i64.eqz
    f32.convert_i32_u
    f32.le
    (br_table 0)
    ;;FLAG_1
    (f64.const 3.184993755184348e-86)
    i64.trunc_f64_u
    i32.wrap_i64
    (br_table 0)
    ;;FLAG_2
    (f32.const 419188808089600.0)
    local.tee 0
    f32.floor
    i32.reinterpret_f32
    (br_table 0)
    ;;FLAG_3
    br 0
)

)