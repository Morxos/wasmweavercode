(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_181975757 (mut i64) (i64.const 521405970046383387))
(func $run (export "run")
    (local i64)
    (local $temp i32)
    ;;FLAG_0
    (i64.const -840)
    i64.ctz
    f64.convert_i64_u
    i64.reinterpret_f64
    i64.ctz
    local.tee 0
    (f32.const -1.2926054440610946e-31)
    (f32.const 55958276.0)
    f32.le
    i64.extend_i32_u
    i64.rotl
    global.set $global_181975757
    (i32.const 213)
    br_if 0
    ;;FLAG_1
    (i32.const 543454871)
    (br_table 0)
    ;;FLAG_2
    return
)

)