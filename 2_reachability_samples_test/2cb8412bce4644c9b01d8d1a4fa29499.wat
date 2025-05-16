(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f64 f32)
    (local $temp i32)
    ;;FLAG_0
    block
        block
            block
                ;;FLAG_4
                (i32.const -4)
                nop
                i32.extend16_s
                i32.ctz
                (f32.const -1.134454887359733e+35)
                f32.neg
                f32.floor
                f32.ceil
                f32.sqrt
                f32.nearest
                f64.promote_f32
                local.set 0
                f64.convert_i32_u
                i32.trunc_f64_s
                drop
            end

            ;;FLAG_3
            (f32.const 8.537786177317183e+32)
            f32.trunc
            f32.abs
            f64.promote_f32
            i64.reinterpret_f64
            i64.eqz
            (br_table 0 1 2)
        end

        local.get 0
        i64.reinterpret_f64
        i64.extend8_s
        i64.popcnt
        i64.eqz
        (br_table 1 0)
        (i64.const -889715)
        i32.wrap_i64
        (br_table 0 1)
        ;;FLAG_2
    end

    ;;FLAG_1
    (f32.const 3.7813453380899956e-25)
    local.set 1
    (i64.const 656570)
    i64.eqz
    (br_table 0)
)

)