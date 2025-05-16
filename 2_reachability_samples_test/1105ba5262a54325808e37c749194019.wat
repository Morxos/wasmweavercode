(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3873015623 (mut i64) (i64.const -4623519354498978963))
(global $global_1945213013 (mut f64) (f64.const -4.878172911581612e+18))
(global $global_2657746008 (mut f32) (f32.const 5.806934872412914e+18))
(func $run (export "run")
    (local i32 f32 i32)
    (local $temp i32)
    block
        ;;FLAG_0
        (i64.const 74)
        global.set $global_3873015623
        nop
        (i64.const -86)
        f64.reinterpret_i64
        global.set $global_1945213013
        local.get 0
        (br_table 0 1)
        ;;FLAG_1
        (i32.const -4624)
        (br_table 1 0)
        ;;FLAG_2
    end

    (f32.const 7.521364690138324e-38)
    f32.sqrt
    f32.abs
    i32.trunc_f32_u
    f32.convert_i32_s
    f32.sqrt
    local.set 1
    block
        block
            ;;FLAG_4
            (f32.const -1.202135556966338e-38)
            (f32.const 894657495040.0)
            f32.ne
            local.tee 2
            f32.reinterpret_i32
            global.set $global_2657746008
        end

        ;;FLAG_3
        nop
        (i32.const 798769567)
        f64.convert_i32_u
        i32.trunc_f64_s
        i32.eqz
        (br_table 1 0)
    end

)

)