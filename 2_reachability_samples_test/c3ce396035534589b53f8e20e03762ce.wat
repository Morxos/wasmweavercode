(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_0
    block
        ;;FLAG_3
        (i32.const -802054100)
        f64.convert_i32_s
        f64.trunc
        f64.floor
        f32.demote_f64
        f32.trunc
        nop
        (i32.const -87169290)
        i32.clz
        i32.popcnt
        i32.popcnt
        (i32.const -2375)
        i32.shr_u
        i64.extend_i32_s
        f32.convert_i64_u
        f32.eq
        i32.popcnt
        (br_table 0 1)
        ;;FLAG_4
        return
    end

    ;;FLAG_1
    (i32.const -5403687)
    i32.eqz
    f64.convert_i32_s
    f64.neg
    f32.demote_f64
    i32.reinterpret_f32
    (br_table 0)
    ;;FLAG_2
)

)