(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_3703832494 (mut i32) (i32.const 271128707))
(global $global_3993560383 (mut f64) (f64.const -5.288238760662749e+18))
(global $global_1288595464 (mut i64) (i64.const -4720684986930026939))
(func $run (export "run") (result i32)
    (local f64)
    (local $temp i32)
    (f64.const 2.2599083229835395e+93)
    f64.floor
    (i64.const -8481799)
    (f64.const 3.656974285734582e-127)
    i64.trunc_f64_s
    i64.ge_u
    global.set $global_3703832494
    nop
    nop
    f64.sqrt
    i64.reinterpret_f64
    i64.extend8_s
    local.get 0
    global.set $global_3993560383
    block (param i64)
        (i32.const -30692)
        global.set $global_3703832494
        global.set $global_1288595464
        nop
        nop
    end

    (i32.const -3034)
    global.set $global_3703832494
    (i64.const 55)
    f64.convert_i64_s
    global.set $global_3993560383
    (f32.const 2.300172550053846e+37)
    f32.nearest
    drop
    (i64.const 1926674385447022591)
    i64.extend8_s
    (f64.const 6.04039579287008e+243)
    i64.reinterpret_f64
    i64.le_s
    return
)

)