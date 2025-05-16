(module
(type $sig_function_2453028605 (func (param f32)))
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_522756170 i32 (i32.const -1057516977))
(global $global_3296817965 (mut i32) (i32.const 123273793))
(func $function_2453028605 (export "function_2453028605") (param f32)
    (local i32)
    (local $temp i32)
    (i64.const -413853)
    local.get 0
    i32.trunc_f32_u
    i32.extend8_s
    local.set 1
    i32.wrap_i64
    (br_table 0)
    ;;FLAG_0
    br 0
)
(func $run (export "run")
    (local i32 f64 i32)
    (local $temp i32)
    ;;FLAG_1
    (f64.const 1.6290076262504208e+118)
    i64.reinterpret_f64
    f64.convert_i64_u
    (f64.const 2.6743613911205936e-110)
    f64.div
    (i32.const 463599)
    block (param f64 i32)
        f32.reinterpret_i32
        call $function_2453028605
        local.get 0
        i32.extend16_s
        f64.convert_i32_s
        f64.min
        f64.sqrt
        local.set 1
    end

    ;;FLAG_2
    block
        (i32.const -974996)
        local.tee 2
        i32.clz
        drop
        block
            (f64.const 5.721798287251638e+127)
            global.get $global_522756170
            global.set $global_3296817965
            f64.trunc
            i64.reinterpret_f64
            i64.clz
            i64.extend32_s
            f64.reinterpret_i64
            (f64.const 5.635693945794201e+220)
            f64.ne
            (br_table 2 0 1)
            ;;FLAG_4
        end

        ;;FLAG_3
        br 0
        (i32.const -35)
        global.set $global_3296817965
        local.get 0
        (br_table 1 0)
    end

    br 0
)

)