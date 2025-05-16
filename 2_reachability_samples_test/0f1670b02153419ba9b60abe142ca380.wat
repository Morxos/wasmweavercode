(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3066418232 (mut f32) (f32.const 7.104808293444354e+18))
(func $run (export "run")
    (local f32 i64)
    (local $temp i32)
    block
        ;;FLAG_4
        (f32.const -5.53341798105654e-26)
        i32.reinterpret_f32
        i32.popcnt
        f32.convert_i32_s
        global.set $global_3066418232
        return
    end

    ;;FLAG_0
    (f32.const 2.444197909888296e-32)
    f32.neg
    f64.promote_f32
    f64.neg
    i32.trunc_f64_u
    (br_table 0)
    ;;FLAG_1
    (f64.const 6.422472239312378e-289)
    f64.nearest
    i32.trunc_f64_u
    (br_table 0)
    ;;FLAG_2
    (f32.const 2.4968137779524113e-08)
    local.tee 0
    (f64.const 1.1852387764496342e-200)
    f32.demote_f64
    i32.trunc_f32_u
    f32.convert_i32_u
    f32.le
    i32.clz
    (br_table 0)
    ;;FLAG_3
    global.get $global_3066418232
    i64.trunc_f32_s
    local.set 1
)

)