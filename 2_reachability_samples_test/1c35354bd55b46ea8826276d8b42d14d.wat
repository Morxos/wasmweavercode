(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3430286703 (mut f32) (f32.const -7.753675734727524e+18))
(func $run (export "run")
    (local f64)
    (local $temp i32)
    ;;FLAG_0
    block
        ;;FLAG_2
        (f32.const 611870.3125)
        global.set $global_3430286703
        nop
        (f64.const 2.3190309588156638e+79)
        local.set 0
    end

    ;;FLAG_1
    (i32.const -22838236)
    f64.convert_i32_u
    f32.demote_f64
    f32.nearest
    (i32.const -59)
    f64.convert_i32_u
    i64.reinterpret_f64
    i64.eqz
    i32.popcnt
    f32.convert_i32_s
    f32.eq
    drop
    br 0
)

)