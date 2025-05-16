(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3095787922 (mut f32) (f32.const 3.1050524477987226e+18))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    ;;FLAG_0
    block
        block
            ;;FLAG_3
            (f32.const 6.399548389722933e-28)
            f32.ceil
            global.set $global_3095787922
            block
                local.get 0
                nop
                drop
                (f32.const -0.0009441456641070545)
                global.set $global_3095787922
            end

            ;;FLAG_4
            global.get $global_3095787922
            global.set $global_3095787922
        end

        local.get 0
        f32.sqrt
        i32.reinterpret_f32
        drop
    end

    ;;FLAG_1
    nop
    local.get 0
    i32.trunc_f32_s
    i32.ctz
    (br_table 0)
    ;;FLAG_2
)

)