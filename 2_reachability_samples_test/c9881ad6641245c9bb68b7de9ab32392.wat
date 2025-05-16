(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_4170621577 (mut f64) (f64.const -2.77097875384525e+18))
(global $global_1784519127 (mut i32) (i32.const -840580108))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    ;;FLAG_0
    (i32.const -40)
    i32.clz
    i32.clz
    drop
    (f64.const 1.7504576884625424e-19)
    block (param f64)
        ;;FLAG_3
        global.set $global_4170621577
        (i32.const 5679546)
        global.set $global_1784519127
        (f32.const 3.514084902523994e-27)
        i32.trunc_f32_s
        (br_table 0 1)
        ;;FLAG_4
    end

    ;;FLAG_1
    (f32.const -1.102745693476338e-27)
    local.get 0
    f32.le
    br_if 0
    ;;FLAG_2
    br 0
)

)