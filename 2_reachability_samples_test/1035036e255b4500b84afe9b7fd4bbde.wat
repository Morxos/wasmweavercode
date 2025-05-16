(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1779032836 (mut f64) (f64.const 7.103530252293923e+18))
(func $run (export "run")
    (local i32 f32)
    (local $temp i32)
    ;;FLAG_0
    (i64.const 247563)
    i64.extend32_s
    i32.wrap_i64
    local.set 0
    global.get $global_1779032836
    i64.trunc_f64_u
    i64.extend8_s
    f64.convert_i64_u
    i32.trunc_f64_u
    (br_table 0)
    ;;FLAG_1
    local.get 0
    f32.reinterpret_i32
    local.set 1
    (i64.const 0)
    local.get 0
    i64.extend_i32_u
    i64.rem_s
    f64.reinterpret_i64
    f64.neg
    f64.floor
    drop
    (i64.const 773136)
    drop
)

)