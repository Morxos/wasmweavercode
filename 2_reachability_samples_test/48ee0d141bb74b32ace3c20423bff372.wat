(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_419063217 (mut i32) (i32.const 1235683998))
(func $run (export "run")
    (local f64 f32 i32)
    (local $temp i32)
    ;;FLAG_0
    (f64.const 1.2062022498335648e-302)
    i64.trunc_f64_u
    local.get 0
    i64.trunc_f64_s
    (f32.const 4.623796377969372e+23)
    local.tee 1
    i32.reinterpret_f32
    (f64.const 1.5156292144019332e+88)
    (i32.const -5495)
    local.set 2
    i64.reinterpret_f64
    f32.convert_i64_s
    i32.reinterpret_f32
    i32.le_s
    i32.ctz
    global.set $global_419063217
    i64.eq
    (br_table 0)
    ;;FLAG_1
    br 0
)

)