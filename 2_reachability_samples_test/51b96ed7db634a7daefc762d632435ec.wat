(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1375326027 (mut i32) (i32.const 1979838610))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    block
        ;;FLAG_1
        nop
        (f32.const -43560.09765625)
        f32.abs
        local.tee 0
        f64.promote_f32
        f64.trunc
        drop
        (i32.const -675)
        f32.convert_i32_s
        drop
        global.get $global_1375326027
        (br_table 0 1)
        ;;FLAG_2
        return
        (f64.const 3.1756421735337045e-114)
        i64.trunc_f64_u
        local.get 0
        i32.trunc_f32_s
        drop
        i64.eqz
        (br_table 1 0)
        ;;FLAG_3
        br 0
        global.get $global_1375326027
        (f32.const 3.6030710856391066e+17)
        drop
        (br_table 0 1)
        ;;FLAG_4
        br 0
    end

    global.get $global_1375326027
    local.get 0
    i32.reinterpret_f32
    i32.shr_s
    (br_table 0)
    ;;FLAG_0
    br 0
)

)