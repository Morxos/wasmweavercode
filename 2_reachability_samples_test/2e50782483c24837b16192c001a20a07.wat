(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_4057676792 (mut f64) (f64.const 6.442761407868482e+18))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    block
        nop
        (i32.const -95579)
        i32.extend8_s
        local.set 0
        nop
        (i32.const -642543)
        (br_table 0 1)
        ;;FLAG_2
    end

    (f32.const -2.3402385479609987e-20)
    i32.reinterpret_f32
    (f32.const -8.389832887540773e-17)
    global.get $global_4057676792
    f64.sqrt
    f64.floor
    f64.sqrt
    i64.trunc_f64_s
    (i32.const -75702)
    local.set 0
    f64.reinterpret_i64
    i64.trunc_f64_s
    drop
    (f32.const -10886146048.0)
    f32.le
    i32.sub
    (br_table 0)
    ;;FLAG_0
    block
        ;;FLAG_3
        (f32.const 7.227782816698891e-09)
        f32.ceil
        f32.neg
        f32.ceil
        i32.trunc_f32_s
        global.get $global_4057676792
        f64.floor
        i64.trunc_f64_s
        f64.convert_i64_u
        (f64.const 4.2563218758376666e+193)
        f64.le
        nop
        i32.le_s
        (br_table 1 0)
        ;;FLAG_4
    end

    ;;FLAG_1
    br 0
)

)