(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_958594336 (mut f32) (f32.const 7.253114819845292e+18))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    ;;FLAG_0
    block
        block
            ;;FLAG_4
            (f32.const -6.395274844454993e+27)
            f32.nearest
            nop
            f32.ceil
            f32.ceil
            global.set $global_958594336
        end

        ;;FLAG_3
        (i32.const -1117)
        i32.ctz
        i64.extend_i32_u
        (f64.const 2.3660255053045583e+274)
        nop
        i64.reinterpret_f64
        i64.ge_s
        drop
    end

    ;;FLAG_1
    global.get $global_958594336
    f32.floor
    f32.nearest
    local.set 0
    (i32.const 979241)
    (br_table 0)
    ;;FLAG_2
)

)