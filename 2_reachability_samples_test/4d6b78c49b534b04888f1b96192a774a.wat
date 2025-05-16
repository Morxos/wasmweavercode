(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1720458161 f64 (f64.const 7.507495738145085e+18))
(func $run (export "run")
    (local f64)
    (local $temp i32)
    ;;FLAG_0
    (i32.const -472629)
    i32.extend16_s
    (f32.const 0.22611474990844727)
    i64.trunc_f32_u
    i64.extend8_s
    i32.wrap_i64
    i32.and
    (br_table 0)
    ;;FLAG_1
    global.get $global_1720458161
    local.set 0
    br 0
)

)