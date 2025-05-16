(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_4059966628 (mut i32) (i32.const -641815882))
(global $global_2346586693 (mut f32) (f32.const 8.814144254357012e+18))
(func $run (export "run")
    (local i64)
    (local $temp i32)
    ;;FLAG_0
    block
        ;;FLAG_2
        nop
        local.get 0
        f64.reinterpret_i64
        i32.trunc_f64_u
        nop
        (br_table 0 1)
        ;;FLAG_3
    end

    ;;FLAG_1
    global.get $global_4059966628
    global.get $global_4059966628
    i32.shr_u
    i32.extend16_s
    global.set $global_4059966628
    (f32.const 14906556416000.0)
    global.set $global_2346586693
    return
)

)