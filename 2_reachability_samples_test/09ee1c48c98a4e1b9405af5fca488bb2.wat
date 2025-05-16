(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_4255655578 (mut f32) (f32.const 6.70407423827116e+18))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    ;;FLAG_0
    block
        ;;FLAG_3
        nop
        global.get $global_4255655578
        i64.trunc_f32_s
        i64.extend8_s
        f32.convert_i64_u
        i32.reinterpret_f32
        (br_table 0 1)
        ;;FLAG_4
    end

    ;;FLAG_1
    (i64.const -1)
    i64.extend8_s
    (f64.const 8.864983413798589e+197)
    f64.floor
    i64.reinterpret_f64
    i64.eq
    local.tee 0
    i32.ctz
    (br_table 0)
    ;;FLAG_2
    return
)

)