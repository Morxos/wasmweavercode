(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_4132597000 (mut f32) (f32.const 7.648190238426137e+18))
(func $run (export "run")
    (local f32 i64)
    (local $temp i32)
    ;;FLAG_0
    block
        ;;FLAG_3
        local.get 0
        global.set $global_4132597000
        (i32.const 3768)
        (f32.const -1.6727110702617655e+21)
        local.get 0
        f32.le
        nop
        i32.le_s
        (br_table 0 1)
        ;;FLAG_4
    end

    ;;FLAG_1
    nop
    (f32.const 1.2818401970307627e+29)
    (f64.const 1.6442391405523775e-130)
    i64.trunc_f64_s
    local.set 1
    global.get $global_4132597000
    f32.ne
    (br_table 0)
    ;;FLAG_2
    br 0
)

)