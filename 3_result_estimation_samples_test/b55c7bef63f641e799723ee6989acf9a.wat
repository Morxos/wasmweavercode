(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_3830490418 (mut i64) (i64.const 3162598649905858145))
(global $global_4025115886 (mut i32) (i32.const -714347460))
(func $run (export "run") (result i32)
    (local $temp i32)
    (f32.const -2.2072986071309392e-13)
    f32.neg
    i32.trunc_f32_s
    nop
    i64.extend_i32_u
    global.set $global_3830490418
    block
        (i64.const -2494526)
        i64.extend8_s
        (f64.const 3.8451380617077047e-16)
        (i32.const -8)
        global.set $global_4025115886
        drop
        i32.wrap_i64
        f32.reinterpret_i32
        drop
    end

    (i64.const -4)
    f32.convert_i64_s
    drop
    (i64.const -975553811)
    i64.eqz
    i32.popcnt
    i32.ctz
)

)