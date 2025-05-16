(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1488945689 f64 (f64.const -6.629792687785179e+18))
(global $global_2482519878 (mut f32) (f32.const 5.644966364281045e+18))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    block
        ;;FLAG_2
        block
            (i32.const -5940)
            f32.convert_i32_u
            f32.abs
            nop
            local.set 0
        end

        nop
        (f32.const 7.046607644768486e-35)
        f32.ceil
        i32.reinterpret_f32
        (br_table 1 0)
        ;;FLAG_3
        global.get $global_1488945689
        global.get $global_1488945689
        f64.le
        (br_table 1 0)
    end

    ;;FLAG_0
    local.get 0
    f32.trunc
    global.set $global_2482519878
    global.get $global_1488945689
    f32.demote_f64
    i64.trunc_f32_s
    i32.wrap_i64
    drop
    block
        ;;FLAG_4
        local.get 0
        i32.trunc_f32_u
        f64.convert_i32_u
        i64.trunc_f64_u
        i64.eqz
        (br_table 0 1)
    end

    ;;FLAG_1
)

)