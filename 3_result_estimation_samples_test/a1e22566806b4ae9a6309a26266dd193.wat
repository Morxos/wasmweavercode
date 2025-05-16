(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_1529837854 (mut i64) (i64.const 3782847749704430132))
(global $global_3200748505 (mut f32) (f32.const -7.50628506872211e+18))
(global $global_2825538497 (mut f64) (f64.const -5.098369998049487e+18))
(global $global_2024973574 (mut i32) (i32.const 1328723261))
(func $run (export "run") (result i32)
    (local f64 f64 i32 i32)
    (local $temp i32)
    global.get $global_1529837854
    f32.convert_i64_u
    i32.reinterpret_f32
    f32.reinterpret_i32
    f32.abs
    local.get 0
    local.tee 1
    nop
    (f64.const 8.608726588378608e-165)
    f64.min
    (f32.const -5.693813704958531e-16)
    global.set $global_3200748505
    f64.sqrt
    i64.reinterpret_f64
    f64.convert_i64_s
    f64.sqrt
    drop
    i64.trunc_f32_u
    block
        (i64.const 2754)
        f64.convert_i64_s
        f64.sqrt
        local.get 0
        (i32.const 653)
        local.tee 2
        nop
        local.tee 3
        i32.extend8_s
        local.set 2
        f64.sqrt
        global.set $global_2825538497
        f64.trunc
        i64.trunc_f64_u
        i32.wrap_i64
        nop
        global.set $global_2024973574
    end

    global.set $global_1529837854
    (i64.const -81391574)
    i64.clz
    f64.reinterpret_i64
    f32.demote_f64
    drop
    (i32.const 7012)
)

)