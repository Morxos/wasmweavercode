(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1584904787 (mut f64) (f64.const 6.840057198181986e+18))
(func $run (export "run")
    (local f64)
    (local $temp i32)
    ;;FLAG_0
    block
        ;;FLAG_3
        nop
        global.get $global_1584904787
        local.set 0
        (f64.const 2.9763385253816916e+258)
        drop
    end

    ;;FLAG_1
    (f32.const 3.038912250513915e+28)
    i32.reinterpret_f32
    i32.extend16_s
    local.get 0
    f32.demote_f64
    f32.sqrt
    i32.trunc_f32_u
    i32.lt_u
    (br_table 0)
    ;;FLAG_2
    br 0
)

)