(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    ;;FLAG_0
    (f64.const 1.7827453255256163e-97)
    i32.trunc_f64_u
    f32.reinterpret_i32
    drop
    block
        ;;FLAG_2
        (f64.const 3.3817193632545643e-249)
        f64.neg
        f64.trunc
        f32.demote_f64
        local.set 0
        (i64.const -4481128823643028021)
        drop
    end

    ;;FLAG_1
    br 0
)

)