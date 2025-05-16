(module
(type $sig_function_569213975 (func (param f32)))
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1684120354 (mut i64) (i64.const 2850478787297722530))
(func $function_569213975 (export "function_569213975") (param f32)
    (local $temp i32)
    ;;FLAG_0
    (i32.const 49630)
    local.get 0
    f32.nearest
    f32.ceil
    local.set 0
    (br_table 0)
    ;;FLAG_1
    (f64.const 3.9859393377116807e-123)
    f64.nearest
    (f64.const 0.010638322840815121)
    (i64.const 9028856124507424347)
    f64.convert_i64_u
    f64.le
    i32.ctz
    f64.convert_i32_u
    f64.mul
    i32.trunc_f64_s
    i64.extend_i32_u
    f64.reinterpret_i64
    f64.floor
    i32.trunc_f64_s
    i32.popcnt
    (br_table 0)
    ;;FLAG_2
    (i64.const 80185498)
    i64.extend16_s
    global.set $global_1684120354
)
(func $run (export "run")
    (local i32)
    (local $temp i32)
    ;;FLAG_3
    (i32.const -61857213)
    local.get 0
    drop
    f32.convert_i32_u
    call $function_569213975
    nop
    return
)

)