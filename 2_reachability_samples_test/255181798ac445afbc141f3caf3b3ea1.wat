(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1906795907 (mut f64) (f64.const 5.060826799263486e+18))
(func $run (export "run")
    (local f64 i32)
    (local $temp i32)
    ;;FLAG_0
    nop
    nop
    block
        ;;FLAG_2
        block
            ;;FLAG_4
            global.get $global_1906795907
            local.get 0
            f64.max
            global.get $global_1906795907
            f64.le
            f32.convert_i32_u
            drop
        end

        ;;FLAG_3
        local.get 0
        nop
        i32.trunc_f64_u
        local.set 1
        br 0
    end

    ;;FLAG_1
    local.get 0
    i32.trunc_f64_s
    f64.convert_i32_u
    f64.ceil
    i64.trunc_f64_s
    i64.clz
    i64.eqz
    drop
    br 0
)

)