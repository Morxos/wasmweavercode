(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3415447473 (mut f32) (f32.const 3.4134321304436736e+17))
(func $run (export "run")
    (local f64 f64)
    (local $temp i32)
    ;;FLAG_0
    block
        ;;FLAG_3
        (f64.const 3.4320233507654154e-177)
        (i64.const 27284953)
        f32.convert_i64_u
        f32.sqrt
        global.set $global_3415447473
        i32.trunc_f64_s
        (br_table 1 0)
        ;;FLAG_4
    end

    ;;FLAG_1
    nop
    local.get 0
    f64.sqrt
    local.tee 1
    i32.trunc_f64_s
    (br_table 0)
    ;;FLAG_2
    return
)

)