(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_568843806 (mut f64) (f64.const -5.158545635100424e+18))
(func $run (export "run")
    (local f32 f64 i32 f32)
    (local $temp i32)
    ;;FLAG_0
    block
        ;;FLAG_2
        block
            ;;FLAG_4
            (f32.const 1.3004657782423878e-28)
            (i64.const 393)
            global.get $global_568843806
            f64.trunc
            f32.demote_f64
            local.tee 0
            f32.ceil
            global.get $global_568843806
            f64.ceil
            i64.trunc_f64_s
            f32.convert_i64_u
            f32.gt
            (f64.const 5.519109873477409e-161)
            drop
            (i32.const 82344)
            f32.convert_i32_s
            i32.trunc_f32_s
            i32.popcnt
            i32.popcnt
            global.get $global_568843806
            (i32.const -74798)
            drop
            local.set 1
            local.set 2
            i32.clz
            drop
            drop
            drop
            (f64.const 1.4552210848477008e+60)
            local.set 1
        end

        ;;FLAG_3
        (i64.const -30459897)
        i64.extend8_s
        i32.wrap_i64
        drop
    end

    (f32.const -6.752053514782157e-38)
    local.tee 3
    i32.reinterpret_f32
    i64.extend_i32_s
    i64.eqz
    (br_table 0)
    ;;FLAG_1
    nop
)

)