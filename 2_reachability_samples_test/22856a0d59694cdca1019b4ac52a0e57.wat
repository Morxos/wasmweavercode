(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_790742256 (mut i64) (i64.const -7090411057560617537))
(func $run (export "run")
    (local f32 i32)
    (local $temp i32)
    ;;FLAG_0
    block
        ;;FLAG_2
        block
            ;;FLAG_4
            block
                (i64.const 141)
                global.set $global_790742256
                (i32.const -3547875)
                i32.clz
                i32.clz
                i32.eqz
                f32.reinterpret_i32
                i32.trunc_f32_u
                f32.convert_i32_s
                nop
                drop
            end

            local.get 0
            (i64.const -3917198)
            i64.popcnt
            f64.convert_i64_s
            f32.demote_f64
            f32.le
            local.set 1
            return
        end

        local.get 0
        i64.trunc_f32_s
        i64.ctz
        i64.ctz
        global.get $global_790742256
        i64.div_s
        local.get 0
        f32.nearest
        i32.trunc_f32_u
        f32.reinterpret_i32
        f32.ceil
        f32.trunc
        i64.trunc_f32_u
        i64.shr_u
        i32.wrap_i64
        (br_table 1 0)
        ;;FLAG_3
    end

    ;;FLAG_1
    (f32.const -2.1519866072609205e+32)
    drop
    (f32.const 1.2993839496888515e-25)
    drop
)

)