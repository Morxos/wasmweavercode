(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_28468797 (mut f64) (f64.const 1.7320374675553034e+18))
(global $global_668507260 (mut i64) (i64.const -5308532467679291908))
(func $run (export "run")
    (local i64)
    (local $temp i32)
    ;;FLAG_0
    (i64.const -962)
    i64.ctz
    i64.extend32_s
    i64.ctz
    i64.popcnt
    (f64.const 2.566982847783923e-200)
    f64.trunc
    global.set $global_28468797
    drop
    local.get 0
    i32.wrap_i64
    (i32.const 0)
    i32.rotr
    (i64.const -15)
    global.set $global_668507260
    (br_table 0)
    ;;FLAG_1
    local.get 0
    f64.convert_i64_u
    i64.trunc_f64_s
    i64.popcnt
    i64.extend16_s
    i32.wrap_i64
    br_if 0
    ;;FLAG_2
)

)