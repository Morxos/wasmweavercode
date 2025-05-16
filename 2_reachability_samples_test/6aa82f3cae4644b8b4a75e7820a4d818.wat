(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3691401740 (mut f32) (f32.const 5.858566289185833e+18))
(global $global_3269163749 (mut i32) (i32.const 2081757454))
(func $run (export "run")
    (local f32 i32)
    (local $temp i32)
    block
        block
            ;;FLAG_3
            global.get $global_3691401740
            local.get 0
            f32.gt
            i32.popcnt
            (i32.const -992885493)
            drop
            (br_table 0 2 1)
            ;;FLAG_4
        end

        local.get 0
        i32.trunc_f32_s
        i32.clz
        local.tee 1
        i32.ctz
        (br_table 1 0)
        ;;FLAG_2
    end

    ;;FLAG_0
    (f64.const 2.2398261972205047e-223)
    i32.trunc_f64_s
    i64.extend_i32_s
    f64.convert_i64_u
    global.get $global_3691401740
    (i32.const -589156)
    global.set $global_3269163749
    f64.promote_f32
    nop
    f64.le
    (br_table 0)
    ;;FLAG_1
)

)