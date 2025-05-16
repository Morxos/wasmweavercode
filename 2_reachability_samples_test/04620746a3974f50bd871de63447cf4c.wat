(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3886105182 (mut i32) (i32.const -239486021))
(func $run (export "run")
    (local f32 i32)
    (local $temp i32)
    block
        ;;FLAG_1
        block
            ;;FLAG_4
            (i32.const 0)
            i32.popcnt
            i32.ctz
            drop
            (i64.const -832718698)
            i64.extend16_s
            f32.convert_i64_u
            (i32.const 318088)
            i32.extend16_s
            global.set $global_3886105182
            (i32.const 1240471732)
            (f32.const -1.1716262079496833e+29)
            nop
            f32.ceil
            local.tee 0
            local.set 0
            local.set 1
            f32.trunc
            drop
        end

        ;;FLAG_2
        global.get $global_3886105182
        f32.convert_i32_u
        drop
        global.get $global_3886105182
        local.get 0
        f32.ceil
        f32.abs
        local.set 0
        (br_table 0 1)
        ;;FLAG_3
        br 0
    end

    ;;FLAG_0
    (f64.const 8.726870187410368e+141)
    i64.reinterpret_f64
    drop
    nop
)

)