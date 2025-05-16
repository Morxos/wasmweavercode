(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f32 f32)
    (local $temp i32)
    ;;FLAG_0
    block
        ;;FLAG_3
        nop
        (f32.const 9.626582198052347e-08)
        f32.ceil
        local.tee 0
        f32.nearest
        i64.trunc_f32_u
        f32.convert_i64_s
        local.tee 1
        i64.trunc_f32_u
        i64.eqz
        br_if 0
        ;;FLAG_4
    end

    ;;FLAG_1
    (f32.const -2.13007393141972e+28)
    local.set 0
    (i32.const 15234252)
    i32.popcnt
    (br_table 0)
    ;;FLAG_2
    br 0
)

)