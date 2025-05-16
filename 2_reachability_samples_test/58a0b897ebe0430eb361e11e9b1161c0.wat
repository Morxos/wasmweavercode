(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(table $tab_1594039852 10 funcref)
(func $run (export "run")
    (local f64)
    (local $temp i32)
    ;;FLAG_0
    nop
    (f64.const 1.058788701380873e+234)
    local.set 0
    block
        ;;FLAG_2
        (f64.const 2.420588641589371e-31)
        i64.reinterpret_f64
        i64.extend16_s
        f32.convert_i64_u
        i32.reinterpret_f32
        br_if 0
        ;;FLAG_3
    end

    ;;FLAG_1
    block
        ;;FLAG_4
        (f64.const 4.694030589079477e-59)
        i64.reinterpret_f64
        f32.convert_i64_u
        f64.promote_f32
        f32.demote_f64
        f32.trunc
        (f32.const -6.817329136158967e-36)
        f32.eq
        table.get $tab_1594039852
        drop
    end

)

)