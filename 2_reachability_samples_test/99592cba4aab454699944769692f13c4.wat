(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3967381587 (mut f64) (f64.const -6.927119300483926e+18))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    ;;FLAG_0
    block
        ;;FLAG_3
        global.get $global_3967381587
        drop
        global.get $global_3967381587
        f64.ceil
        i64.trunc_f64_s
        f32.convert_i64_u
        i32.reinterpret_f32
        (br_table 0 1)
        ;;FLAG_4
    end

    ;;FLAG_1
    global.get $global_3967381587
    f32.demote_f64
    local.tee 0
    local.get 0
    f32.neg
    f32.trunc
    f32.ne
    nop
    (br_table 0)
    ;;FLAG_2
    return
)

)