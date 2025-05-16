(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2049348860 (mut i32) (i32.const -1116210984))
(global $global_3575502496 (mut f32) (f32.const 4.2389540505124864e+18))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    ;;FLAG_0
    (f32.const -8468.70703125)
    (i32.const -24714)
    i32.ctz
    local.set 0
    (f64.const 1.1172551291058294e-128)
    f64.abs
    i64.trunc_f64_u
    i64.ctz
    global.get $global_2049348860
    f64.convert_i32_u
    f64.sqrt
    i64.trunc_f64_s
    i64.lt_s
    global.set $global_2049348860
    nop
    f32.nearest
    nop
    global.set $global_3575502496
    nop
    (i32.const 32203753)
    (br_table 0)
    ;;FLAG_1
    (f64.const 1.0558894151796112e-81)
    f64.floor
    i64.trunc_f64_s
    f32.convert_i64_s
    (i64.const 737695950)
    drop
    f64.promote_f32
    drop
)

)