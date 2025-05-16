(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_0
    (i64.const 8597173392441694250)
    (i64.const -91)
    i64.gt_u
    f32.reinterpret_i32
    i32.trunc_f32_u
    i32.extend16_s
    i32.ctz
    br_if 0
    ;;FLAG_1
    (i32.const 876)
    (br_table 0)
    ;;FLAG_2
    br 0
)

)