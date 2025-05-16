(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3549605618 (mut i64) (i64.const -8937040741336014061))
(func $run (export "run")
    (local f64 f32 i32)
    (local $temp i32)
    ;;FLAG_0
    block
        block
            ;;FLAG_2
            (f64.const 7.190707703795276e+63)
            i64.reinterpret_f64
            block (param i64)
                ;;FLAG_4
                i64.ctz
                (f32.const -4.731889693755746e-33)
                f32.nearest
                f32.neg
                nop
                drop
                local.get 0
                f64.floor
                i64.reinterpret_f64
                i64.add
                global.set $global_3549605618
            end

            ;;FLAG_3
            (i32.const -453376)
            drop
        end

        (f32.const 1.304872460083928e-10)
        local.set 1
        (f32.const 8917246976.0)
        f32.floor
        i32.reinterpret_f32
        (br_table 1 0)
        ;;FLAG_1
    end

    nop
    (f64.const 9.500490521744764e-10)
    i32.trunc_f64_u
    local.set 2
)

)