(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2795753040 (mut i32) (i32.const 1787827950))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    ;;FLAG_0
    (f32.const 2.0940371658895174e-09)
    i32.trunc_f32_s
    i32.clz
    i32.extend16_s
    global.set $global_2795753040
    (i64.const 8)
    local.get 0
    drop
    f64.convert_i64_s
    f64.floor
    f64.ceil
    f64.abs
    f64.neg
    i32.trunc_f64_s
    (br_table 0)
    ;;FLAG_1
    br 0
)

)