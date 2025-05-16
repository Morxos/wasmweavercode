(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2722891902 (mut f32) (f32.const 1.3669881721976259e+18))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    (f32.const -1.4417786897095303e-13)
    f32.trunc
    global.set $global_2722891902
    (i32.const 64405)
    i32.extend8_s
    local.tee 0
    nop
    block
        ;;FLAG_1
        block
            ;;FLAG_3
            nop
            local.get 0
            i32.extend16_s
            (i32.const -4649)
            i32.extend8_s
            i32.extend8_s
            f32.reinterpret_i32
            i32.reinterpret_f32
            nop
            i32.le_s
            (br_table 0 1 2)
            ;;FLAG_4
            return
        end

        ;;FLAG_2
        (f64.const 1.781372289391353e-185)
        i64.trunc_f64_u
        drop
        nop
    end

    i32.extend8_s
    (br_table 0)
    ;;FLAG_0
)

)