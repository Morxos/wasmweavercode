(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_726736977 (mut i64) (i64.const 5045811264189569316))
(global $global_1005040801 (mut f32) (f32.const 2.1870471000243569e+18))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    ;;FLAG_0
    block
        ;;FLAG_1
        block
            block
                (i32.const 205)
                i64.extend_i32_s
                global.set $global_726736977
                (i64.const 47952)
                global.set $global_726736977
            end

            block
                nop
                nop
                (i32.const -60954)
                i32.popcnt
                f64.convert_i32_u
                f64.sqrt
                f32.demote_f64
                i32.reinterpret_f32
                br_if 0
                ;;FLAG_4
            end

            ;;FLAG_3
            nop
            global.get $global_726736977
            f64.reinterpret_i64
            f64.neg
            f64.nearest
            i64.trunc_f64_s
            global.set $global_726736977
        end

        ;;FLAG_2
        nop
        global.get $global_726736977
        global.get $global_726736977
        i64.rotl
        (f32.const -2.5853306375707246e-16)
        i32.reinterpret_f32
        i32.extend8_s
        local.tee 0
        drop
        global.set $global_726736977
    end

    (i64.const -117171)
    i64.extend8_s
    f32.convert_i64_s
    global.set $global_1005040801
)

)