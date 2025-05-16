(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1248605213 (mut i64) (i64.const -5182621968812942969))
(global $global_2270681775 (mut i32) (i32.const -1535440169))
(func $run (export "run")
    (local i64 i32 i32)
    (local $temp i32)
    block
        local.get 0
        block
            block
                ;;FLAG_4
                (i64.const -63)
                f32.convert_i64_s
                i32.reinterpret_f32
                local.set 1
                global.get $global_1248605213
                drop
            end

            ;;FLAG_3
            (i32.const -692035875)
            global.get $global_1248605213
            drop
            (f32.const 19.268028259277344)
            block
                global.get $global_1248605213
                i64.extend8_s
                (i32.const 783002496)
                global.set $global_2270681775
                local.set 0
            end

            i32.reinterpret_f32
            i32.shr_u
            f32.convert_i32_s
            (f32.const -6.377693450427437e+29)
            f32.eq
            i32.clz
            (br_table 2 1 0)
        end

        ;;FLAG_2
        f64.convert_i64_s
        i64.trunc_f64_s
        global.set $global_1248605213
        nop
    end

    ;;FLAG_0
    (f64.const 1.2079531313579737e+73)
    (f32.const 6.495130313130148e-22)
    i32.trunc_f32_s
    local.tee 2
    global.set $global_2270681775
    f64.trunc
    i64.reinterpret_f64
    global.get $global_1248605213
    i64.ge_s
    nop
    (br_table 0)
    ;;FLAG_1
    (i32.const -362)
    (br_table 0)
)

)