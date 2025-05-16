(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_748832946 (mut f64) (f64.const -4.163572153026396e+18))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    ;;FLAG_0
    (f64.const 6.4925771399024e-303)
    global.set $global_748832946
    global.get $global_748832946
    (i64.const -8)
    local.get 0
    drop
    f32.convert_i64_u
    local.set 0
    f64.floor
    f32.demote_f64
    f32.floor
    global.get $global_748832946
    i32.trunc_f64_s
    i32.extend8_s
    i64.extend_i32_u
    f32.convert_i64_u
    f32.abs
    f32.nearest
    f32.ne
    (br_table 0)
    ;;FLAG_1
)

)