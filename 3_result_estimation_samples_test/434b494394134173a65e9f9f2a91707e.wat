(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(global $global_4234480946 (mut i32) (i32.const -1888349011))
(global $global_3325672624 (mut f64) (f64.const -4.002771014087393e+17))
(global $global_3592458928 (mut i64) (i64.const 9156723766967433453))
(func $run (export "run") (result i64)
    (local f64 f32 i32)
    (local $temp i32)
    (f64.const 152041945.87840697)
    local.set 0
    global.get $global_4234480946
    i32.popcnt
    f32.convert_i32_s
    f32.ceil
    local.set 1
    global.get $global_4234480946
    nop
    i64.extend_i32_s
    (f32.const -6.384777835420313e+24)
    drop
    f64.convert_i64_u
    global.set $global_3325672624
    nop
    global.get $global_4234480946
    local.set 2
    block
        (i64.const -9387)
        global.set $global_3592458928
        nop
        (f64.const 1.3897922016333564e-131)
        i64.reinterpret_f64
        i64.ctz
        drop
        (f64.const 9504084549.07051)
        drop
    end

    (i64.const 4136)
)

)